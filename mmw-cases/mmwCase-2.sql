----Case 2.   count number of occurrences about both toys record and health ones into 2 columns

/*
Department           numberOfToys numberOfHealth
-------------------- ------------ --------------
health               0            2
toys                 7            0
*/
-----------------------------

IF OBJECT_ID('HealthToy') IS NOT NULL drop table [table]
go 
create table [HealthToy] 
(Department  varchar(20),
Value  varchar(20) )
insert into [HealthToy] values 
('toys','A'),
('toys','B'),
('toys','C'),
('health','K'),
('health','F'),
('toys','G'),
('toys','R'),
('toys','W'),
('toys','Q')

select *from HealthToy

select Department,
sum(case when  Department = 'toys' then 1 else 0 end) numberOfToys,
sum(case when  Department = 'health' then 1 else 0 end) numberOfHealth
from [HealthToy]
group by Department
/*
Department           numberOfToys numberOfHealth
-------------------- ------------ --------------
health               0            2
toys                 7            0
*/
;with cte as(
select Department,count(*) as ct
from [HealthToy]
group by Department
)
select Department,
case when  Department = 'toys' then ct else 0 end numberOfToys,
case when  Department = 'health' then ct else 0 end numberOfHealth
from cte
/*
Department           numberOfToys numberOfHealth
-------------------- ------------ --------------
health               0            2
toys                 7            0
*/


select Department, 
sum(iif(department = 'toys',1,0)) numberOfToys, 
sum(iif(department = 'health',1,0)) numberOfHealth
from [HealthToy]
group by Department




