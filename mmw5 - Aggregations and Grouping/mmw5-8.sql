----5-8. Creating Custom Summaries

-----------------------------

SELECT i.Shelf,
    i.LocationID,
    p.Name,
    SUM(i.Quantity) AS Total
FROM Production.ProductInventory i
    INNER JOIN Production.Product p
    ON i.ProductID = p.ProductID
WHERE Shelf IN ('A', 'C')
    AND Name IN ('Chain', 'Decal', 'Head Tube')
GROUP BY GROUPING SETS((i.Shelf), (i.Shelf, p.Name), (i.LocationID, p.Name));

----------------------------------------- Present the data


-----------------------------

    
-----------------------------




-----------------------------

    
-----------------------------




