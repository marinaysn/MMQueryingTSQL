----4-8. Testing for the Existence of a Row

-----------------------------

SELECT s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
WHERE EXISTS ( SELECT SalesOrderID
				FROM Sales.SalesOrderDetail sod
				WHERE sod.UnitPrice BETWEEN 1000 AND 2000
				  AND sod.SalesOrderID = s.SalesOrderID );

----------------------------------------- Present the data

SELECT a.FirstName, a.LastName  
FROM Person.Person AS a  
WHERE EXISTS  
(SELECT *   
    FROM HumanResources.Employee AS b  
    WHERE a.BusinessEntityID = b.BusinessEntityID  
    AND a.LastName = 'Johnson');  
GO
-----------------------------

    
-----------------------------



