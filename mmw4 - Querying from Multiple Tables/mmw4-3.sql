----4-3. Making One Side of a Join Optional

-----------------------------

SELECT s.CountryRegionCode,
    s.StateProvinceCode,
    t.TaxType,
    t.TaxRate
FROM Person.StateProvince s
    LEFT OUTER JOIN Sales.SalesTaxRate t
    ON s.StateProvinceID = t.StateProvinceID;

----------------------------------------- Present the data

SELECT  * from Person.StateProvince order by StateProvinceID;
SELECT  * from Sales.SalesTaxRate order by StateProvinceID;

-----------------------------

SELECT s.CountryRegionCode,
    s.StateProvinceCode,
    t.TaxType,
    t.TaxRate, s.StateProvinceID as sp, t.StateProvinceID as tt
FROM Person.StateProvince s
    LEFT OUTER JOIN Sales.SalesTaxRate t
    ON s.StateProvinceID = t.StateProvinceID;
    
-----------------------------



