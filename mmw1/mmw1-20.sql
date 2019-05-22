-- 1-20. Sorting Nulls High or Low and sorting with non existing value

--ex:

SELECT ProductID, Name, Weight
FROM Production.Product
ORDER BY ISNULL(Weight, 1) DESC, Weight;

 --or 

 SELECT CATEGORY, ProdCode, DescLang2
FROM inventory
ORDER BY ISNULL(CATEGORY, 1) desc, ProdCode;

---------------

Select distinct (case when CATEGORY is null then 0 else 1 end) as 'aaa', CATEGORY
 From  inventory
 Order By (case when CATEGORY is null then 0 else 1 end) ,CATEGORY

 --or 

 Select distinct (case when CATEGORY is null then 0 else 1 end) as 'aaa', CATEGORY
 From  inventory
 Order By 1, 2
---------------

Select distinct CATEGORY
 From  inventory  where CATEGORY is not null
 union (select '{all}')

-- or 

Select  CATEGORY
 From  inventory  where CATEGORY is not null
 union (select '{all}')

---------------
