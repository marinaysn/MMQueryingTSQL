----4-1.  sql query display not related records or not existing data

-----------------------------

DROP TABLE IF EXISTS shipcustomer
DROP TABLE IF EXISTS FinanceCustomer
GO
create table shipcustomer (policycode int, BranchCode int, customerCod int) 
create table FinanceCustomer  (policycode int, BranchCode int, customerCod int) 
GO
-------------------------------------- DML: insert some sample data
insert into shipcustomer(policycode, BranchCode, customerCod) values (122,1,104)
insert into shipcustomer(policycode, BranchCode, customerCod) values (200,1,303)
insert into shipcustomer(policycode, BranchCode, customerCod) values (300,1,305)
insert into shipcustomer(policycode, BranchCode, customerCod) values (450,1,90)

insert into FinanceCustomer(policycode, BranchCode, customerCod) values (122,2,104)
insert into FinanceCustomer(policycode, BranchCode, customerCod) values (300,2,305)
insert into FinanceCustomer(policycode, BranchCode, customerCod) values (200,1,303)

insert into shipcustomer values (777,888,999)
insert into FinanceCustomer values (777,888,111)
GO
----------------------------------------- Present the data
SELECT * 
FROM shipcustomer
SELECT *
FROM FinanceCustomer
GO

----------------------------------------- Solution
SELECT t1.policycode, t1.BranchCode, t1.customerCod-- , t2.*
FROM shipcustomer t1
LEFT JOIN FinanceCustomer t2 
	ON t1.policycode = t2.policycode
where (t1.customerCod = t2.customerCod and t1.BranchCode <> t2.BranchCode) 
	OR (t2.policycode is null)
GO

---------------------------------------- Alternative Solution

select policycode,BranchCode from shipcustomer
EXCEPT  
select policycode,BranchCode from FinanceCustomer

-----------------------------




