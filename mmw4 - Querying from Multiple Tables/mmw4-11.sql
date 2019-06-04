----4-11. Eliminating Duplicate Values from a Union

-----------------------------
    SELECT P1.LastName
    FROM HumanResources.Employee E
        INNER JOIN Person.Person P1
        ON E.BusinessEntityID = P1.BusinessEntityID
UNION
    SELECT P2.LastName
    FROM Sales.SalesPerson SP
        INNER JOIN Person.Person P2
        ON SP.BusinessEntityID = P2.BusinessEntityID;


