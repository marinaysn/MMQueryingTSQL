--2-7. Returning from the Current Execution Scope
--use TRY...CATCH block

-----------------------------

IF NOT EXISTS
(SELECT ProductID
FROM Production.Product
WHERE Color = 'Pink')
BEGIN
    RETURN;
END;
SELECT ProductID
FROM Production.Product
WHERE Color = 'Pink';

--compare with
IF NOT EXISTS
(SELECT ProductID
FROM Production.Product
WHERE Color = 'Red')
BEGIN
    RETURN;
END;
SELECT ProductID
FROM Production.Product
WHERE Color = 'Red';

-----------------------------

CREATE PROCEDURE ReportPink
AS
IF NOT EXISTS
(SELECT ProductID
FROM Production.Product
WHERE Color = 'Pink')
BEGIN
    --Return the value 100 to indicate no pink products
    RETURN 100;
END;
SELECT ProductID
FROM Production.Product
WHERE Color = 'Pink';
--Return the value 0 to indicate pink was found
RETURN 0;
--With this procedure in place, execute the following:
DECLARE @ResultStatus int;
EXEC @ResultStatus = ReportPink;
PRINT @ResultStatus;


--compare with


CREATE PROCEDURE ReportRed
AS
IF NOT EXISTS
(SELECT ProductID
FROM Production.Product
WHERE Color = 'Red')
BEGIN
    --Return the value 100 to indicate no pink products
    RETURN 100;
END;
SELECT ProductID
FROM Production.Product
WHERE Color = 'Red';
--Return the value 0 to indicate pink was found
RETURN 0;
--With this procedure in place, execute the following:
DECLARE @ResultStatus int;
EXEC @ResultStatus = ReportRed;
PRINT @ResultStatus;

-----------------------------



-----------------------------





