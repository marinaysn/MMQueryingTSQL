----4-7. Introducing New Columns
--use CROSS APPLY
--other sources: 
--https://explainextended.com/2009/07/16/inner-join-vs-cross-apply/
--https://sqlhints.com/tag/examples-of-cross-apply/
--https://www.mssqltips.com/sqlservertip/1958/sql-server-cross-apply-and-outer-apply/
--https://visweshkk.blogspot.com/2014/06/using-cross-apply-to-optimize-joins-on.html

-- SQL Server APPLY operator has two variants; CROSS APPLY and OUTER APPLY
--
-- The CROSS APPLY operator returns only those rows from the left table expression 
-- (in its final output) if it matches with the right table expression. 
-- In other words, the right table expression returns rows for 
-- the left table expression match only.

-- The OUTER APPLY operator returns all the rows from the left table expression 
-- irrespective of its match with the right table expression. For those rows 
-- for which there are no corresponding matches in the right table expression, 
-- it contains NULL values in columns of the right table expression.
--
-- So you might conclude, the CROSS APPLY is equivalent to an INNER JOIN 
-- (or to be more precise its like a CROSS JOIN with a correlated sub-query) 
-- with an implicit join condition of 1=1 whereas the OUTER APPLY is equivalent 
-- to a LEFT OUTER JOIN.


----------------------------- 
SELECT
    DATENAME(MONTH, DATEADD(MONTH, DATEDIFF(MONTH,'19000101',OrderDate), '19000101') ) AS [Month],
    SUM(TotalDue) AS Total
FROM Sales.SalesOrderHeader
WHERE OrderDate>='20120101'
    AND OrderDate<'20140101'
GROUP BY            DATEADD(MONTH, DATEDIFF(MONTH,'19000101',OrderDate), '19000101')
ORDER BY            DATEADD(MONTH, DATEDIFF(MONTH,'19000101',OrderDate), '19000101');

-- to eliminate redundancy

SELECT DATENAME(MONTH,FirstDayOfMth) AS Month, SUM(TotalDue) AS Total
FROM Sales.SalesOrderHeader
	CROSS APPLY (
			SELECT DATEADD(MONTH, DATEDIFF(MONTH,'19000101',OrderDate), '19000101') AS FirstDayOfMth
	) F_Mth
WHERE OrderDate>='20120101' 
    AND OrderDate < '20140101'
GROUP BY FirstDayOfMth
ORDER BY  FirstDayOfMth
----------------------------------------- Present the data



-----------------------------


-----------------------------

--example with cross apply and inner join

create table Company_CA
(
    companyId int identity(1,1)
,
    companyName varchar(100)
,
    zipcode varchar(10) 
,
    constraint PK_Company_CA  primary key (companyId)
)
GO

create table Person_CA
(
    personId int identity(1,1)
,
    personName varchar(100)
,
    companyId int
,
    constraint FK_Person_CA_CompanyId foreign key (companyId) references dbo.Company_CA (companyId)
,
    constraint PK_Person_CA  primary key (personId)
)
GO

insert Company_CA
    select 'ABC Company', '19808'
union
    select 'XYZ Company', '08534'
union
    select '123 Company', '10016'


insert Person_CA
    select 'Alan', 1
union
    select 'Bobby', 1
union
    select 'Chris', 1
union
    select 'Xavier', 2
union
    select 'Yoshi', 2
union
    select 'Zambrano', 2
union
    select 'Player 1', 3
union
    select 'Player 2', 3
union
    select 'Player 3', 3


/* using CROSS APPLY */
select *
from Person_CA  p
cross apply (
    select *
    from Company_CA  c
    where p.companyid = c.companyId
) Czip

/* the equivalent query using INNER JOIN */
select *
from Person_CA  p
    inner join Company_CA  c on p.companyid = c.companyId

---------------------
----SQL Sever OUTER APPLY vs LEFT OUTER JOIN

--using Northwind

SELECT * FROM Department_CA
 SELECT * FROM Employee_CA

--Script #2 - CROSS APPLY and INNER JOIN

SELECT * FROM Department D 
CROSS APPLY 
   ( 
   SELECT * FROM Employee E 
   WHERE E.DepartmentID = D.DepartmentID 
   ) A 
GO
 
SELECT * FROM Department D 
INNER JOIN Employee E ON D.DepartmentID = E.DepartmentID 
GO 
---------------------
--Script #3 - OUTER APPLY and LEFT OUTER JOIN

SELECT * FROM Department D 
OUTER APPLY 
   ( 
   SELECT * FROM Employee E 
   WHERE E.DepartmentID = D.DepartmentID 
   ) A 
GO
 
SELECT * FROM Department D 
LEFT OUTER JOIN Employee E ON D.DepartmentID = E.DepartmentID 
GO 


---------------------

--Script #4 - APPLY with table-valued function

IF EXISTS (SELECT * FROM sys.objects WHERE OBJECT_ID = OBJECT_ID(N'[fn_GetAllEmployeeOfADepartment]') AND type IN (N'IF')) 
BEGIN 
   DROP FUNCTION dbo.fn_GetAllEmployeeOfADepartment 
END 
GO
 
CREATE FUNCTION dbo.fn_GetAllEmployeeOfADepartment(@DeptID AS INT)  
RETURNS TABLE 
AS 
RETURN 
   ( 
   SELECT * FROM Employee_CA E 
   WHERE E.DepartmentID = @DeptID 
   ) 
GO
 
SELECT * FROM Department_CA D 
CROSS APPLY dbo.fn_GetAllEmployeeOfADepartment(D.DepartmentID) 
GO
 
SELECT * FROM Department_CA D 
OUTER APPLY dbo.fn_GetAllEmployeeOfADepartment(D.DepartmentID) 
GO 

---------------------
--Script #5 - APPLY with Dynamic Management Function (DMF)
--Northwind
USE master 
GO
 
SELECT DB_NAME(r.database_id) AS [Database], st.[text] AS [Query]  
FROM sys.dm_exec_requests r 
CROSS APPLY sys.dm_exec_sql_text(r.plan_handle) st 
WHERE r.session_Id > 50           -- Consider spids for users only, no system spids. 
AND r.session_Id NOT IN (@@SPID)  -- Don't include request from current spid. 

