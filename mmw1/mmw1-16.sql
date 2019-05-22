-- 1-16. Writing an IN-List
--IN is a shorthand for multiple OR expressions

SELECT ProductID, Name, Color
FROM Production.Product
WHERE Color IN ('Silver', 'Black', 'Red');

---------------
select class, * from inventory
where class in ( 'Anba', 'BAG', 'COLE')

---------------

