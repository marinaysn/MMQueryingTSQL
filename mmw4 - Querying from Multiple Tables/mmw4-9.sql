----4-9. Testing Against the Result from a Query

-----------------------------
SELECT  BusinessEntityID,
        SalesQuota AS CurrentSalesQuota
FROM Sales.SalesPerson
WHERE SalesQuota = (SELECT MAX(SalesQuota)
                    FROM Sales.SalesPerson);






