----4-2. Querying Many-to-Many Relationships

-----------------------------

SELECT p.Name,
    s.DiscountPct
FROM Sales.SpecialOffer s
    INNER JOIN Sales.SpecialOfferProduct o
    ON s.SpecialOfferID = o.SpecialOfferID
    INNER JOIN Production.Product p
    ON o.ProductID = p.ProductID
WHERE p.Name = 'All-Purpose Bike Stand';

----------------------------------------- Present the data

SELECT * from Sales.SpecialOffer WHERE SpecialOfferID   = 1;
SELECT * from Sales.SpecialOfferProduct WHERE ProductID  = 879;
SELECT * from Production.Product WHERE Name = 'All-Purpose Bike Stand';

-----------------------------


-----------------------------



