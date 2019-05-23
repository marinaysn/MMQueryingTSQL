--2-2. Retrieving Values into Variables

DECLARE @AddressLine1 NVARCHAR(60);
DECLARE @AddressLine2 NVARCHAR(60);

SELECT @AddressLine1 = AddressLine1, @AddressLine2 = AddressLine2
FROM Person.Address
WHERE AddressID = 66;

SELECT @AddressLine1 AS Address1, @AddressLine2 AS Address2;


-----------------------------
--using AdventureWorks2017
select *
from dbo.sysobjects
where id = object_id(N'ufnGetAccountingEndDate')

DECLARE @idFunc int
set @idFunc = (Select id
from sysobjects
Where name = 'ufnGetAccountingEndDate')

SELECT [definition], *
FROM sys.sql_modules
WHERE [object_id] = @idFunc


-----------------------------
--use if / else

DECLARE @AddressLine1 NVARCHAR(60) = 'Alger County Sheriff'
DECLARE @AddressLine2 NVARCHAR(60) = '101 E. Varnum'
SELECT @AddressLine1 = AddressLine1, @AddressLine2 = AddressLine2
FROM Person.Address
WHERE AddressID = 49862;
IF @@ROWCOUNT = 1
SELECT @AddressLine1, @AddressLine2
ELSE
SELECT 'Either no rows or too many rows found.';

-----------------------------



-----------------------------





