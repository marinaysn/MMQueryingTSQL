----4-14. Finding Rows that Are Missing

-----------------------------
    SELECT ProductID
    FROM Production.Product
EXCEPT
    SELECT ProductID
    FROM Sales.SpecialOfferProduct;

-----------------------------
-- If you want to see more than just a list of ID numbers, you can write a query involving NOT EXISTS and a
-- correlated subquery. For example:
SELECT P.ProductID,
    P.Name
FROM Production.Product P
WHERE NOT EXISTS (  SELECT *
                    FROM Sales.SpecialOfferProduct SOP
                    WHERE SOP.ProductID = P.ProductID );
    





