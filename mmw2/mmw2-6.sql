--2-6. Going to a Label in a Transact-SQL Batch
-- Create a label using the following syntax, which is simply to provide a label name followed by a colon:
-- example:
-- LabelName:
-- Then write a GOTO statement to branch directly to the point in the code that you have labeled. Here’s an
-- example:
-- GOTO LabelName;


-----------------------------

DECLARE @Name nvarchar(50) = 'Engineering';
DECLARE @GroupName nvarchar(50) = 'Research and Development';
DECLARE @Exists bit = 0;
IF EXISTS (
SELECT Name
FROM HumanResources.Department
WHERE Name = @Name)
BEGIN
    SET @Exists = 1;
    GOTO SkipInsert;
END;
INSERT INTO HumanResources.Department
    (Name, GroupName)
VALUES(@Name , @GroupName);
SkipInsert:
IF @Exists = 1
BEGIN
-- This recipe introduces the PRINT statement. Use it when you just want to return a message or the value
-- of a variable, and you don’t want that message or value to be interpreted by the calling application as being
-- part of a query result set

    PRINT @Name + ' already exists in HumanResources.Department';
END
ELSE
BEGIN
    PRINT 'Row added';
END;

-----------------------------

DECLARE @Name nvarchar(50) = 'Developement Manager';
DECLARE @GroupName nvarchar(50) = 'Research and Development';
DECLARE @Exists bit = 0;
IF EXISTS (
SELECT Name
FROM HumanResources.Department
WHERE Name = @Name)
BEGIN
    SET @Exists = 1;
    GOTO SkipInsert;
END;
INSERT INTO HumanResources.Department
    (Name, GroupName)
VALUES(@Name , @GroupName);
SkipInsert:
IF @Exists = 1
BEGIN
    PRINT @Name + ' already exists in HumanResources.Department';
END
ELSE
BEGIN
    PRINT 'Row added';
END;


-----------------------------





