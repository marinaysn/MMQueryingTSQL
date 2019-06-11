----5-3. Counting the Rows in a Group
--The COUNT and COUNT_BIG functions are utilized to return a count of the number of items in a group
--The difference between these functions is the data type returned: COUNT returns an INTEGER, 
--while COUNT_BIG returns a BIGINT
------

-----------------------------
SELECT TOP (5)
    Shelf,
    COUNT(ProductID) AS ProductCount,
    COUNT_BIG(ProductID) AS ProductCountBig
FROM Production.ProductInventory
GROUP BY Shelf
ORDER BY Shelf;


----------------------------------------- Present the data


-----------------------------

    
-----------------------------




-----------------------------

    
-----------------------------




