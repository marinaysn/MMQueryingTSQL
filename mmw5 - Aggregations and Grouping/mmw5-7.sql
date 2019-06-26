----5-8. Creating Hierarchical Summaries

-----------------------------

SELECT i.Shelf,
    i.LocationID,
    p.Name,
    SUM(i.Quantity) AS Total
FROM Production.ProductInventory i
    INNER JOIN Production.Product p
    ON i.ProductID = p.ProductID
WHERE i.Shelf IN ('A','B')
    AND p.Name LIKE 'Metal%'
GROUP BY i.Shelf, i.LocationID, ROLLUP(i.Shelf, p.Name)
ORDER BY i.Shelf, i.LocationID;

----------------------------------------- Present the data


-----------------------------
SELECT i.Shelf,
    p.Name,
    SUM(i.Quantity) AS Total
FROM Production.ProductInventory i
    INNER JOIN Production.Product p
    ON i.ProductID = p.ProductID
WHERE i.Shelf IN ('A','B')
    AND p.Name LIKE 'Metal%'
GROUP BY ROLLUP(i.Shelf, p.Name);
    
-----------------------------




-----------------------------

    
-----------------------------




