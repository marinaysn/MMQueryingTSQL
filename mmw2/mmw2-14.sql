--2-14. Looping through Query Results a Row at a Time

-----------------------------


-- Do not show rowcounts in the results
SET NOCOUNT ON;
DECLARE @session_id smallint;

-- Declare the cursor
DECLARE session_cursor CURSOR FORWARD_ONLY READ_ONLY FOR
    SELECT session_id
    FROM sys.dm_exec_requests
    WHERE status IN ('runnable', 'sleeping', 'running');

-- Open the cursor
OPEN session_cursor;

-- Retrieve one row at a time from the cursor
FETCH NEXT
FROM session_cursor
INTO @session_id;

-- Process and retrieve new rows until no more are available
WHILE @@FETCH_STATUS = 0
BEGIN
    PRINT 'Spid #: ' + STR(@session_id);
    EXEC ('sp_who ' + @session_id);
    
    FETCH NEXT
        FROM session_cursor
        INTO @session_id;
END;

-- Close the cursor
CLOSE session_cursor;

-- Deallocate the cursor
DEALLOCATE session_cursor;




