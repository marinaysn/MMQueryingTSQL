----5-4. Restricting a Result Set to Groups of Interest
--
----------------------------------------- syntax

SELECT select_list
FROM table_list
[ WHERE search_conditions ]
[ GROUP BY group_by_list ]
[ HAVING search_conditions ]

-----------------------------
SELECT s.Name,
    COUNT(w.WorkOrderID) AS Cnt
FROM Production.ScrapReason s
    INNER JOIN Production.WorkOrder w
    ON s.ScrapReasonID = w.ScrapReasonID
GROUP BY s.Name
HAVING COUNT(*) > 50;


----------------------------------------- Present the data


-----------------------------

    
-----------------------------




-----------------------------

    
-----------------------------




