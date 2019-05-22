-- 1-21. Forcing Unusual Sort Orders

-- Problem
-- You wish to force a sort order not directly supported by the data. For example, you wish to retrieve only the
-- colored products, and you further wish to force the color red to sort first.
-- red should be before all other colors, even if it is black or grey or silver
-- this happens because SQL Server sorts nulls first. The CASE expression returns NULL
-- for red-colored items, thus forcing those first
--ex:

SELECT p.ProductID, p.Name, p.Color
FROM Production.Product AS p
WHERE p.Color IS NOT NULL
ORDER BY CASE p.Color
WHEN 'Red' THEN NULL ELSE p.COLOR END;

---------------

    Select distinct CATEGORY
    From inventory
    where CATEGORY is not null
union
    (select '{all}')

-- or 

    Select CATEGORY
    From inventory
    where CATEGORY is not null
union
    (select '{all}')

---------------
