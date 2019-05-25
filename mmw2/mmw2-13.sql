--2-13. Pausing Execution for a Period of Time

-----------------------------


WAITFOR DELAY '00:00:10';
BEGIN
    SELECT TransactionID, Quantity
    FROM Production.TransactionHistory;
END;


-----------------------------

-- You can also wait until a specific time is reached, as in this next example:
WAITFOR TIME '12:22:00';
BEGIN
    SELECT COUNT(*)
    FROM Production.TransactionHistory;
END;




