-- 1-22. Paging Through a Result Set

-- Problem
--You wish to present an ordered result set to an application user N rows at a time.


-- in addition to select top 10 also use


SELECT ProductID, Name
FROM Production.Product
ORDER BY Name
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;


SELECT ProductID, Name
FROM Production.Product
ORDER BY Name
OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY;


---------------
SELECT *
FROM Purchasing.PurchaseOrderHeader
TABLESAMPLE (5 PERCENT);

SELECT CATEGORY, ProdCode, DescLang2
FROM inventory
TABLESAMPLE (50 PERCENT);


SELECT *
FROM Purchasing.PurchaseOrderHeader
TABLESAMPLE (200 ROWS);

