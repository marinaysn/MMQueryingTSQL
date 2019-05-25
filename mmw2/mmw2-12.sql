--2-12. Controlling Iteration in a Loop

-----------------------------

WHILE (1=1)
BEGIN
    PRINT 'Endless While, because 1 always equals 1.';
    IF 1=1
BEGIN
        PRINT 'But we won''t let the endless loop happen!';
        BREAK;
    --Because this BREAK statement terminates the loop.
    END;
END;

-----------------------------
-- If you just want to terminate a single iteration early, then issue the CONTINUE statement as in this next
-- example:
DECLARE @n int = 1;
WHILE @n = 1
BEGIN
    SET @n = @n + 1;
    IF @n > 1
CONTINUE;
    PRINT 'You will never see this message.';
END;




-----------------------------






