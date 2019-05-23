--2-4. Deciding Between Two Execution Paths


DECLARE @QuerySelector int = 3;
IF @QuerySelector = 1
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

DECLARE @QuerySelector int = (select count(class) from Inventory where class ='BORA');
IF @QuerySelector !>10
BEGIN
    SELECT TOP 10
        ProdCode, Description, Class
    FROM Inventory
    WHERE class ='BORA'
    ORDER BY ProdCode;
END
ELSE
BEGIN
    SELECT TOP 20
        @QuerySelector, ProdCode, Description, Class
    FROM Inventory
    WHERE class <>'BORA'
    ORDER BY ProdCode;
END;

-----------------------------



-----------------------------





