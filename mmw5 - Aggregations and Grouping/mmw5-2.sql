----5-2. Creating Aggregations Based upon the Values of the Data

-----------------------------

SELECT TOP (10)
    SalesOrderID,
    SUM(LineTotal) AS OrderTotal,
    MIN(LineTotal) AS MinLine,
    MAX(LineTotal) AS MaxLine,
    AVG(LineTotal) AS AvgLine,
    COUNT(LineTotal) AS CountLine
FROM [Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
ORDER BY SalesOrderID;

----------------------------------------- Present the data
Select  * from [Sales].[SalesOrderDetail] --where SalesOrderID = 43659

-----------------------------
SELECT 
   
    SUM(LineTotal) AS OrderTotal,
    MIN(LineTotal) AS MinLine,
    MAX(LineTotal) AS MaxLine,
    AVG(LineTotal) AS AvgLine,
    COUNT(LineTotal) AS CountLine
FROM [Sales].[SalesOrderDetail]
GROUP BY SalesOrderID
ORDER BY SalesOrderID;
    
-----------------------------




-----------------------------

    
-----------------------------




