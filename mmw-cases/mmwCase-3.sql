----Case 3.  sql query to find all the Stored Procedures having a given text in it?

-----------------------------

SELECT OBJECT_NAME(object_id), 
       OBJECT_DEFINITION(object_id), *
FROM sys.procedures
WHERE OBJECT_DEFINITION(object_id) LIKE '%@dRetroDate%'

-----------------------------

SELECT OBJECT_NAME(object_id), 
       OBJECT_DEFINITION(object_id), *
FROM sys.views
WHERE OBJECT_DEFINITION(object_id) LIKE '%date%'




