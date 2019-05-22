-- 1-13. Testing for Existence

--finds out if something is true
SELECT TOP(1) 1
FROM HumanResources.Employee
WHERE SickLeaveHours !> 50;

--shows them 
SELECT SickLeaveHours, *
FROM HumanResources.Employee
WHERE SickLeaveHours !< 60;




---------------
