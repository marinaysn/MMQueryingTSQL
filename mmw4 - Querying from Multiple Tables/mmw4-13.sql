----4-13. Finding Rows in Common Between Two Row Sets
--You have two queries. You want to discover which rows are returned by both.
--The INTERSECT operator finds rows in common between two row sets.
--Note: Like the EXCEPT operator, INTERSECT implicitly deduplicates the final results.
-----------------------------

    SELECT PR1.ProductID
    FROM Production.ProductReview PR1
    WHERE PR1.Rating >= 4
INTERSECT
    SELECT PR1.ProductID
    FROM Production.ProductReview PR1
    WHERE PR1.Rating <= 2;

----------------------------------------- Present the data
SELECT *
FROM Production.ProductReview PR1
WHERE PR1.Rating >= 4

SELECT *
FROM Production.ProductReview PR1
WHERE PR1.Rating <= 2;

-----------------------------
-- If you need more columns then treat the intersection query as a derived table and join it to the Product table

SELECT PR3.ProductID,
    PR3.Name
FROM Production.Product PR3
    INNER JOIN (                SELECT PR1.ProductID
        FROM Production.ProductReview PR1
        WHERE PR1.Rating >= 4
    INTERSECT
        SELECT PR1.ProductID
        FROM Production.ProductReview PR1
        WHERE PR1.Rating <= 2
) SQ
    ON PR3.ProductID = SQ.ProductID;


-----------------------------

-- Another approach is to move the intersection subquery into the WHERE clause and use it to generate an
-- in-list. For example:
SELECT ProductID,
    Name
FROM Production.Product
WHERE ProductID IN (    
		SELECT PR1.ProductID
		FROM Production.ProductReview PR1
		WHERE PR1.Rating >= 4
	INTERSECT
		SELECT PR1.ProductID
		FROM Production.ProductReview PR1
		WHERE PR1.Rating <= 2);

--behind the sence it reads FROM

SELECT ProductID, Name
FROM Production.Product
WHERE ProductID IN (937);
-----------------------------

    
-----------------------------




