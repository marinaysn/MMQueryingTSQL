--3-6. Enforcing Uniqueness with NULL Values

-----------------------------

CREATE UNIQUE INDEX UX_Product_CodeName ON dbo.Product (CodeName) ;
GO


DROP INDEX dbo.Product.UX_Product_CodeName;
GO
CREATE UNIQUE INDEX UX_Product_CodeName ON dbo.Product (CodeName) WHERE CodeName IS NOT NULL
GO

-----------------------------

-- Unique constraints and unique indexes will, by default, enforce uniqueness in the same way with respect to
-- NULL values. Indexes allow for the use of index filtering, and the filter will be created only on the rows that meet
-- the filter criteria.


-----------------------------


-----------------------------



