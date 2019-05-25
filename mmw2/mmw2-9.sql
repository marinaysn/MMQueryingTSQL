--2-9. Writing a Simple CASE Expression
--the following code block uses CASE to assign departments to specific conference rooms.
--Departments not specifically named are lumped together by the ELSE clause into Room D
--The ELSE clause in the expression is optional
-----------------------------

SELECT DepartmentID AS DeptID, [Name], GroupName,
    CASE GroupName
        WHEN 'Research and Development' THEN 'Room A'
        WHEN 'Sales and Marketing' THEN 'Room B'
        WHEN 'Manufacturing' THEN 'Room C'
        ELSE 'Room D'
    END AS ConfRoom
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

--general format of the CASE expression in the example is as follows:
CASE ColumnName
    WHEN OneValue THEN AnotherValue
    ...
    ELSE CatchAllValue
END AS ColumnAlias



