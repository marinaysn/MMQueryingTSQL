--3-4. Looking for NULLs in a Table

-----------------------------
DECLARE @value INT = NULL;

SELECT CASE WHEN @value = NULL THEN 1
    WHEN @value <> NULL THEN 2
    WHEN @value IS NULL THEN 3
ELSE 4
END;


-----------------------------

SELECT TOP 5
    LastName, FirstName, MiddleName
FROM Person.Person
WHERE MiddleName IS NULL;

-----------------------------

SET SHOWPLAN_TEXT ON ;
GO
SELECT JobCandidateID,
    BusinessEntityID
FROM HumanResources.JobCandidate
WHERE ISNULL(BusinessEntityID, 1) <> 1 ;
GO
SET SHOWPLAN_TEXT OFF ;


----------------------------


SET SHOWPLAN_TEXT ON ;
GO
SELECT JobCandidateID,
    BusinessEntityID
FROM HumanResources.JobCandidate
WHERE BusinessEntityID IS NOT NULL ;
GO
SET SHOWPLAN_TEXT OFF ;


----------------------------

SET SHOWPLAN_TEXT ON ;
GO
SELECT JobCandidateID,
    BusinessEntityID, ISNULL(BusinessEntityID, 1)
FROM HumanResources.JobCandidate
WHERE ISNULL(BusinessEntityID, 1) = BusinessEntityID ;
GO
SET SHOWPLAN_TEXT OFF ;

---------------------------------

-- By using the IS NULL operator, SQL Server is able to seek on the index instead of scanning the index.
-- ISNULL() is a function; whenever a column is passed into a function, SQL Server must evaluate that function
-- for every row and is not able to seek on an index to satisfy the WHERE clause