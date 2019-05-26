--3-2. Returning the First Non-NULL Value from a List

-----------------------------

-- The COALESCE function returns the first non-NULL value from a provided list of expressions. The syntax is as
-- follows:

COALESCE
( expression [ ,...n ] )

-- This recipe demonstrates how to use COALESCE to return the first occurrence of a non-NULL value:

SELECT c.CustomerID,
    SalesPersonPhone = spp.PhoneNumber,
    CustomerPhone = pp.PhoneNumber,
    PhoneNumber = COALESCE(pp.PhoneNumber, spp.PhoneNumber, '**NO PHONE**')
FROM Sales.Customer c
    LEFT OUTER JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID

    LEFT OUTER JOIN Person.PersonPhone spp
    ON s.SalesPersonID = spp.BusinessEntityID
    LEFT OUTER JOIN Person.PersonPhone pp
    ON c.CustomerID = pp.BusinessEntityID
ORDER BY CustomerID ;

-----------------------------



-----------------------------

