--3-3. Choosing Between ISNULL and COALESCE in a SELECT Statement

-----------------------------

DECLARE @sql NVARCHAR(MAX) = '
SELECT ISNULL(''5'', 5),
ISNULL(5, ''5''),
COALESCE(''5'', 5),
COALESCE(5, ''5'') ;
';

EXEC sp_executesql @sql;

SELECT column_ordinal,
    is_nullable,
    system_type_name
FROM master.sys.dm_exec_describe_first_result_set(@sql, NULL, 0) a;

select *
FROM master.sys.dm_exec_describe_first_result_set(@sql, NULL, 0) a ;

-----------------------------



-----------------------------

