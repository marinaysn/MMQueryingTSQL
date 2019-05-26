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
FROM master.sys.dm_exec_describe_first_result_set(@sql, NULL, 0) a
;

-----------------------------

SELECT COALESCE('five', 5)
;
SELECT COALESCE('five', '5')
;
SELECT isnull('five', 5)
;

DECLARE @i INT = NULL
;
SELECT ISNULL(@i, 'five')
;

-----------------------------

DECLARE @sql NVARCHAR(MAX) = '
	SELECT TOP 10 FirstName, LastName,
	MiddleName_ISNULL = ISNULL(MiddleName, ''[none]''),
	MiddleName_COALESCE = COALESCE(MiddleName, ''[none]'')
	FROM Person.Person ;
	';
EXEC sp_executesql @sql;

SELECT column_ordinal,
    [name],
    is_nullable
FROM master.sys.dm_exec_describe_first_result_set(@sql, NULL, 0) a ;

-----------------------------

-----------------------------

