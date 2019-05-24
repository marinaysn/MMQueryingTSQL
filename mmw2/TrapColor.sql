USE AdventureWorks2017;
GO
BEGIN TRY
ALTER TABLE Production.Product
DROP CONSTRAINT FK_Trap_Color;
END TRY
BEGIN CATCH
PRINT 'Ignore this failure.';
END CATCH;
GO
BEGIN TRY
DROP TABLE Production.TrapColor;
END TRY
BEGIN CATCH
PRINT 'Ignore this failure.';
END CATCH;
GO

CREATE TABLE Production.TrapColor
(
    Color NVARCHAR(15),
    CONSTRAINT PK_TrapColor_Color
PRIMARY KEY (Color)
);
GO
BEGIN TRY
INSERT INTO Production.TrapColor
    (Color)
SELECT DISTINCT Color
FROM Production.Product;
END TRY
BEGIN CATCH
PRINT 'Fail!';
DROP TABLE Production.TrapColor;
THROW;
END CATCH;
GO
ALTER TABLE Production.Product ADD
CONSTRAINT FK_Trap_Color
FOREIGN KEY (Color)
REFERENCES Production.TrapColor;
