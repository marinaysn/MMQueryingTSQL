--3-5. Removing Values from an Aggregate

-----------------------------
SELECT r.ProductID,
    r.OperationSequence,
    StartDateVariance = AVG(DATEDIFF(day, ScheduledStartDate, ActualStartDate)),
    StartDateVariance_Adjusted = AVG(NULLIF(DATEDIFF(day, ScheduledStartDate, ActualStartDate), 0))
FROM Production.WorkOrderRouting r
WHERE r.ProductID BETWEEN 514 AND 516
GROUP BY r.ProductID,
r.OperationSequence
ORDER BY r.ProductID,
r.OperationSequence;


-----------------------------
----NULLIF (Transact-SQL)

-- Returns a null value if the two specified expressions are equal. 
-- For example, 
SELECT NULLIF(4,4) AS Same, NULLIF(5,7) AS Different; 
-- returns NULL for the first column (4 and 4) because the two input values are the same. 
-- The second column returns the first value (5) because the two input values are different



-----------------------------
---- DATEDIFF (Transact-SQL)
-- This function returns the count (as a signed integer value) of the specified datepart boundaries 
-- crossed between the specified startdate and enddate
--DATEDIFF ( datepart , startdate , enddate ) 

SELECT DATEDIFF(year,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(quarter,     '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(month,       '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(dayofyear,   '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(day,         '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(week,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(hour,        '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(minute,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(second,      '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(millisecond, '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');
SELECT DATEDIFF(microsecond, '2005-12-31 23:59:59.9999999', '2006-01-01 00:00:00.0000000');

-----------------------------



