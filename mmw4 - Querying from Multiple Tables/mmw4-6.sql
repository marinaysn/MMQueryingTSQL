----4-6. Selecting from a Result Set

-----------------------------
SELECT DISTINCT
    s.PurchaseOrderNumber
FROM Sales.SalesOrderHeader s
    INNER JOIN (SELECT SalesOrderID
    FROM Sales.SalesOrderDetail
    WHERE UnitPrice BETWEEN 1000 AND 2000
) d
    ON s.SalesOrderID = d.SalesOrderID;


----------------------------------------- Present the data
	   
SELECT DISTINCT PurchaseOrderNumber, * FROM Sales.SalesOrderHeader 
SELECT * FROM Sales.SalesOrderDetail

-----------------------------

    
-----------------------------



