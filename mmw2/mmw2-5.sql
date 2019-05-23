--2-5. Detecting Whether Rows Exist

IF EXISTS (
SELECT *
FROM Production.Product
WHERE Color = 'Silver')
BEGIN
    SELECT TOP 3
        ProductID, Name, Color
    FROM Production.Product
    WHERE Color = 'Silver'
    ORDER BY Name;
END
ELSE
BEGIN
    SELECT TOP 3
        ProductID, Name, Color
    FROM Production.Product
    WHERE Color = 'Black'
    ORDER BY Name;
END;


-----------------------------



-----------------------------



-----------------------------





