--2-3. Writing Expressions


DECLARE @AddressLine1 NVARCHAR(60);
DECLARE @AddressLine2 NVARCHAR(60);
DECLARE @OneLine NVARCHAR(120);
SELECT @AddressLine1 = AddressLine1, @AddressLine2 = AddressLine2
FROM Person.Address
WHERE AddressID = 66;
SET @OneLine = @AddressLine1 + '; ' + @AddressLine2;
SELECT @OneLine as [Full Address];

--to check:
--SELECT AddressLine1, AddressLine2
--FROM Person.[Address]
--WHERE AddressID = 66;

-----------------------------
DECLARE @piChar NVARCHAR(4) = '3.14159265359';
DECLARE @piNum DECIMAL (3,2);
SET @piNum = CAST(@piChar AS DECIMAL(3,2));

select @piNum;

-----------------------------



-----------------------------





