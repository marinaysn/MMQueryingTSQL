USE [AdventureWorks2017]
GO

/* Drop constraint and table to allow for the script to be rerun at will. */
ALTER TABLE Production.Product
DROP CONSTRAINT FK_Product_Color;
GO
DROP TABLE Production.ProdColor;
GO
CREATE TABLE Production.ProdColor
(
    Color NVARCHAR(15),
    CONSTRAINT PK_ProdColor_Color
PRIMARY KEY (Color)
);

INSERT INTO Production.ProdColor
    (Color)
SELECT DISTINCT Color
FROM Production.Product
WHERE Color IS NOT NULL;
GO
ALTER TABLE Production.Product ADD
CONSTRAINT FK_Product_Color
FOREIGN KEY (Color)
REFERENCES Production.ProdColor;