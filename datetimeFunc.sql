----Today
SELECT GETDATE() 'Today'
----Yesterday
SELECT DATEADD(d,-1,GETDATE()) 'Yesterday'
----First Day of Current Week
SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),0) 'First Day of Current Week'
----Last Day of Current Week
SELECT DATEADD(wk,DATEDIFF(wk,0,GETDATE()),6) 'Last Day of Current Week'
----First Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),0) 'First Day of Last Week'
----Last Day of Last Week
SELECT DATEADD(wk,DATEDIFF(wk,7,GETDATE()),6) 'Last Day of Last Week'
----First Day of Current Month
SELECT DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0) 'First Day of Current Month'
----Last Day of Current Month
SELECT DATEADD(ms,- 3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE())+1,0))) 'Last Day of Current Month'
----First Day of Last Month
SELECT DATEADD(mm,-1,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0)) 'First Day of Last Month'
----Last Day of Last Month
SELECT DATEADD(ms,-3,DATEADD(mm,0,DATEADD(mm,DATEDIFF(mm,0,GETDATE()),0))) 'Last Day of Last Month'
----First Day of Current Year
SELECT DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0) 'First Day of Current Year'
----Last Day of Current Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE())+1,0))) 'Last Day of Current Year'
----First Day of Last Year
SELECT DATEADD(yy,-1,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0)) 'First Day of Last Year'
----Last Day of Last Year
SELECT DATEADD(ms,-3,DATEADD(yy,0,DATEADD(yy,DATEDIFF(yy,0,GETDATE()),0))) 'Last Day of Last Year'
----Next Year
SELECT YEAR(GETDATE()) + 1 as 'Next Year', MONTH(GETDATE()) 'Month', DAY(GETDATE()) 'Day';
SELECT YEAR(DATEADD(YEAR,1, getDate()));
----Next Year April 30
SELECT convert(CHAR(4), year(sysdatetime()) + 1) + '0430' as 'NextYearApril30';
----Adding / Subtracting Dates
SELECT DATEADD(DAY,10, getDate()) 'Next 10 days';
SELECT DATEADD(MONTH, -10, getDate()) 'Ten month Ago';
SELECT DATEADD(YEAR, -10, getDate()) 'Ten years Ago';
----Add And Subtract Years from DateTime in SQL Server
SELECT GETDATE() 'Current_Date', 
           DATEADD(YEAR,5,GETDATE()) 'Current_Date + 1 YEAR'
SELECT GETDATE() 'Current_Date', 
           DATEADD(YY,-13,GETDATE()) 'Current_Date - 3 YEAR'
SELECT GETDATE() 'Current_Date', 
           DATEADD(YYYY,-40,GETDATE()) 'Current_Date - 4 YEAR'
----Add And Subtract Quarters from DateTime in SQL Server
SELECT GETDATE() 'Current_Date',
            DATEADD(QUARTER,1,GETDATE()) 'Current_Date + 1 QUARTER'
SELECT GETDATE() 'Current_Date', 
            DATEADD(QQ,-3,GETDATE()) 'Current_Date - 3 QUARTER'
SELECT GETDATE() 'Current_Date',
            DATEADD(Q,-4,GETDATE()) 'Current_Date - 4 QUARTER'
----Add And Subtract Months from DateTime in Sql Server
SELECT GETDATE() 'Current_Date', 
           DATEADD(month,4,GETDATE()) 'Current_Date + 4 Month'
SELECT GETDATE() 'Current_Date', 
           DATEADD(MM,-10,GETDATE()) 'Current_Date - 10 Month'
SELECT GETDATE() 'Current_Date', 
           DATEADD(M,-20,GETDATE()) 'Current_Date - 20 Month'
----Add And Subtract Weeks from DateTime in SQL Server
SELECT GETDATE() 'Current_Date',
 
           DATEADD(week,-4,GETDATE()) 'Current_Date - 4 week'
SELECT GETDATE() 'Current_Date', 
           DATEADD(wk,10,GETDATE()) 'Current_Date + 10 week'
           
           
SELECT GETDATE() 'Current_Date',
 
           DATEADD(ww,-20,GETDATE()) 'Current_Date - 20 week'
----Subtract Days from DateTime in SQL Server
SELECT GETDATE() 'Current_Date', 
           DATEADD(day,-4,GETDATE()) 'Current_Date - 4 Days'
SELECT GETDATE() 'Current_Date', 
           DATEADD(dd,-10,GETDATE()) 'Current_Date - 10 Days'
SELECT GETDATE() 'Current_Date', 
           DATEADD(d,-20,GETDATE()) 'Current_Date - 20 Days'
----ADD Days from DateTime in SQL Server
SELECT GETDATE() 'Current_Date', 
           DATEADD(day,4,GETDATE()) 'Current_Date + 4 Days'
SELECT GETDATE() 'Current_Date', 
           DATEADD(dd,10,GETDATE()) 'Current_Date + 10 Days'
SELECT GETDATE() 'Current_Date', 
           DATEADD(d,20,GETDATE()) 'Current_Date + 20 Days'
----


----

----


