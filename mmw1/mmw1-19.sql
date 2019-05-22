-- 1-19. Specifying the Case-Sensitivity of a Sort
-- Add a COLLATE clause to each column
--SQL Server supports thousands of collations. The list is long. It helps to narrow your search.

--ex:
SELECT p.Name, h.EndDate, h.ListPrice
FROM Production.Product p
INNER JOIN Production.ProductListPriceHistory h ON
p.ProductID = h.ProductID
ORDER BY p.Name COLLATE Latin1_General_BIN ASC,
h.EndDate DESC;

---------------

--LIST

SELECT Name, Description
FROM fn_helpcollations()
WHERE Name LIKE 'Ukrainian%';

