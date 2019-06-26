----5-6. Performing Aggregations against Unique Values Only

-----------------------------

SELECT [RateChangeDate],
    COUNT([Rate]) AS [Count],
    COUNT(DISTINCT Rate) AS [DistinctCount]
FROM [HumanResources].[EmployeePayHistory]
WHERE RateChangeDate >= '2008-12-01'
    AND RateChangeDate < '2008-12-10'
GROUP BY RateChangeDate;

----------------------------- syntax


----------------------------------------- Present the data


-----------------------------

    
-----------------------------




-----------------------------

    
-----------------------------




