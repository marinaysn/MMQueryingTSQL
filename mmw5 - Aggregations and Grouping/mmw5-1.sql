----5-1. Computing an Aggregation

-----------------------------

SELECT MIN(Rating) Rating_Min,
    MAX(Rating) Rating_Max,
    SUM(Rating) Rating_Sum,
    AVG(Rating) Rating_Avg
FROM Production.ProductReview;

----------------------------------------- Present the data


-----------------------------
SELECT AVG(Grade) AS AvgGrade,
    AVG(DISTINCT Grade) AS AvgDistinctGrade
FROM (VALUES
        (1, 100),
        (1, 100),
        (1, 100),
        (1, 100),
        (1, 100),
        (1, 30)
) dt (StudentId, Grade);
    
-----------------------------




-----------------------------

    
-----------------------------




