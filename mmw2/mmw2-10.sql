--2-9. Writing a Simple CASE Expression
--the following code block uses CASE to assign departments to specific conference rooms.
--Departments not specifically named are lumped together by the ELSE clause into Room D
--The ELSE clause in the expression is optional
-----------------------------

SELECT DepartmentID, [Name],
    CASE
        WHEN [Name] = 'Research and Development' THEN 'Room A'
        WHEN ([Name] = 'Sales and Marketing' OR DepartmentID = 10) THEN 'Room B'
        WHEN [Name] LIKE 'T%'THEN 'Room C'
        ELSE 'Room D' END AS ConferenceRoom
FROM HumanResources.Department;


-- or different syntax


SELECT DepartmentID AS DeptID, [Name], GroupName,
    CASE 
        WHEN GroupName = 'Research and Development' THEN 'Room A'
        WHEN GroupName = 'Sales and Marketing' THEN 'Room B'
        WHEN GroupName = 'Manufacturing' THEN 'Room C'
        ELSE 'Room D'
    END AS ConfRoom
FROM HumanResources.Department;

-----------------------------
--ex:
(CASE
    WHEN [Tons] = 0 THEN CONVERT
( NUMERIC
(18, 2), total *
(1 - Discount))
    ELSE CONVERT
( NUMERIC
(18, 2) , total + RestockingFee)
END) AS TotalAmountAfterOrderLevelDiscount,
(CASE
    WHEN [Tons] = 0  THEN CONVERT
(NUMERIC
(18, 2),
(total * ExchangeRate) *
(1 - Discount))
    ELSE CONVERT
(NUMERIC
(18, 2),
((total + Restocking) * ExchangeRate))
END) AS CurrExtendedAmountAfterOrderLevelDiscount

-----------------------------

--The general form of a searched CASE as used in the example is as follows:
CASE
    WHEN Boolean_expression_1 THEN result_expression_1
    ...
    WHEN Boolean_expression_n THEN result_expression_n
    ELSE CatchAllValue
END AS ColumnAlias



