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
SELECT c.CustomerID
FROM Customers2 c
WHERE EXISTS ( SELECT OrderID
FROM Orders2 o
WHERE o.ShipVia = 2 and
 c.CustomerID = o.CustomerID );

 SELECT distinct c.CustomerID
FROM Customers2 c
inner join Orders2 o on c.CustomerID = o.CustomerID
WHERE o.ShipVia = 2 and
 c.CustomerID = o.CustomerID 
    
-----------------------------



SELECT DISTINCT s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
INNER JOIN (SELECT SalesOrderID
				FROM Sales.SalesOrderDetail
				WHERE UnitPrice BETWEEN 1000 AND 2000
				) d
			ON s.SalesOrderID = d.SalesOrderID;

SELECT DISTINCT s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
WHERE EXISTS ( SELECT SalesOrderID
				FROM Sales.SalesOrderDetail sod
				WHERE sod.UnitPrice BETWEEN 1000 AND 2000
				  AND sod.SalesOrderID = s.SalesOrderID );


SELECT DISTINCT s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
INNER JOIN Sales.SalesOrderDetail sod on sod.SalesOrderID = s.SalesOrderID
	WHERE sod.UnitPrice BETWEEN 1000 AND 2000


SELECT  s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
INNER JOIN (SELECT SalesOrderID
				FROM Sales.SalesOrderDetail
				WHERE UnitPrice BETWEEN 1000 AND 2000
				) d
			ON s.SalesOrderID = d.SalesOrderID;

SELECT  s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
WHERE EXISTS ( SELECT SalesOrderID
				FROM Sales.SalesOrderDetail sod
				WHERE sod.UnitPrice BETWEEN 1000 AND 2000
				  AND s.SalesOrderID =sod.SalesOrderID );


SELECT  s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
INNER JOIN Sales.SalesOrderDetail sod on sod.SalesOrderID = s.SalesOrderID
	WHERE sod.UnitPrice BETWEEN 1000 AND 2000