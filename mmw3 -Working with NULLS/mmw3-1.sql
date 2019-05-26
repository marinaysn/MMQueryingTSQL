--3-1. Replacing NULL with an Alternate Value

-----------------------------


SELECT h.SalesOrderID,
    h.CreditCardApprovalCode,
    CreditApprovalCode_Display = ISNULL(h.CreditCardApprovalCode, '**NO APPROVAL**')
FROM Sales.SalesOrderHeader h
WHERE h.SalesOrderID BETWEEN 43735 AND 43740;

-----------------------------



-----------------------------

