----4-10. Stacking Two Row Sets Vertically

-----------------------------

    SELECT BusinessEntityID,
        GETDATE() QuotaDate,
        SalesQuota
    FROM Sales.SalesPerson
    WHERE SalesQuota > 0
UNION ALL
    SELECT BusinessEntityID,
        QuotaDate,
        SalesQuota
    FROM Sales.SalesPersonQuotaHistory
    WHERE SalesQuota > 0
ORDER BY BusinessEntityID DESC,
QuotaDate DESC;

