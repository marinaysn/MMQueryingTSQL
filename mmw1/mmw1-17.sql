-- 1-17. Performing Wildcard Searches
-- Wildcard Usage
-- %  The percent sign. Represents a string of zero or more characters
-- _ The underscore. Represents a single character
-- [...] A list of characters enclosed within square brackets. Represents a single character from
-- among any in the list.
-- [^...] A list of characters enclosed within square brackets and preceded by a caret. Represents a
-- single character from among any not in the list.
-- WHERE Name LIKE '%/%%' ESCAPE '/'

SELECT ProductID, Name
FROM Production.Product
WHERE Name LIKE 'B%';


select class, * from inventory
WHERE class LIKE 'An%';

---------------
select class, * from inventory
WHERE class LIKE '_ag';

---------------
select class, * from inventory
WHERE class LIKE '[B,A,C,D]ag';

select class, * from inventory
WHERE class LIKE 'An[ba,bx]%';

select Report_column, * from inventory
WHERE Report_column LIKE '[0-9][0-9][0-9]';

---------------

select class, * from inventory
WHERE class LIKE 'Anb[^x]';

---------------

