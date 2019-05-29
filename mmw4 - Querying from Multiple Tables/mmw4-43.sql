----4-4. Making Both Sides of a Join Optional

-----------------------------

SELECT soh.SalesOrderID,
    sr.SalesReasonID,
    sr.Name
FROM Sales.SalesOrderHeader soh
    FULL OUTER JOIN Sales.SalesOrderHeaderSalesReason sohsr
    ON soh.SalesOrderID = sohsr.SalesOrderID
    FULL OUTER JOIN Sales.SalesReason sr
    ON sr.SalesReasonID = sohsr.SalesReasonID;

----------------------------------------- Present the data
SELECT  * from Sales.SalesOrderHeader order by SalesOrderID;
SELECT  * from Sales.SalesOrderHeaderSalesReason order by SalesOrderID;
SELECT  * from Sales.SalesReason order by SalesReasonID;


-----------------------------

    
-----------------------------



