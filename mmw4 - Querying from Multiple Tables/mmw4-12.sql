----4-12. Subtracting One Row Set from Another

-----------------------------
    SELECT P.ProductID
    FROM Production.Product P
EXCEPT
    SELECT BOM.ComponentID
    FROM Production.BillOfMaterials BOM;


