--3-5. Removing Values from an Aggregate

-----------------------------
SELECT r.ProductID,
    r.OperationSequence,
    StartDateVariance = AVG(DATEDIFF(day, ScheduledStartDate,
ActualStartDate)),
    StartDateVariance_Adjusted = AVG(NULLIF(DATEDIFF(day,
ScheduledStartDate,
ActualStartDate), 0))
FROM Production.WorkOrderRouting r
WHERE r.ProductID BETWEEN 514 AND 516
GROUP BY r.ProductID,
r.OperationSequence
ORDER BY r.ProductID,
r.OperationSequence ;

-----------------------------




