-- 1-7. Listing the Available Tables
--will show all tables and views
SELECT table_name, table_type
FROM information_schema.tables

---------------

SELECT table_name, table_type,table_schema
FROM information_schema.tables
WHERE table_name like 'Inventory%';

---------------
--ex: 
SELECT 'Select * from ' + table_schema + '.[' + table_name + '];'
FROM information_schema.tables
WHERE table_name like 'Inventory%'
AND table_type = 'BASE TABLE'

--can work with any other command. Be careful with Drop etc
---------------
