create table students(id int primary  key identity,name varchar(20),branchid int,gender varchar(20),branch varchar(20))
insert into students values('janardhanarao',7,'male','ece'),('kali',4,'male','ece'),('roshni',3,'female','cse'),('revi',2,'male','mech'),('samith',3,'male','civil')
select *from students
drop table student
---------------------------------------------info by branchid------------------------------------
create function branchidfun(@bid int)
returns table
as 
return(select * from students where branchid=@bid)
select * from dbo.branchidfun(2)
------------------------------------------info by gender------------------------------------------
create function genderfun(@gender varchar(10))
returns table
as 
return(select * from students where gender=@gender)
select * from dbo.genderfun('male')
drop function genderfun
----------------------------------------netcount------------------------------------------------

----------------------------trigger-------------------------------------------------
create table tablemplyee(id int,name varchar(40),gender varchar(40),salary int,deptid int )
insert into tablemplyee values(1,'ram','male',9000,1),(2,'krish','male',91000,3),(3,'bheem','male',19000,2),(4,'janaki','female',29000,1),
(5,'seetha','female',9000,3)
select * from tablemplyee
drop table tablemplyee
drop table tablemplyeeaudit
create table tablemplyeeaudit(id int identity(1,1) primary key,auditdata nvarchar(1000) )
create trigger tr_tblemployee_fordelete
on tablemplyee
for delete
as
begin 
declare @id int
select @id=id from deleted
insert into tablemplyeeaudit values ('new employee'+cast(@id as varchar (10))+'is insrted'+cast(getdate() as varchar(30)))
end
select *from tablemplyee
select *from tablemplyeeaudit
delete from tablemplyee  where id=3

insert into tablemplyee values (6,'geetha','female',894798,4)
drop trigger tr_tblemployee_fordelete
---------------------------------------------subquery---------------------------------------
use storedprocedure
create table tblproducts(id int primary key identity,name varchar(20),decsrption varchar(100)) 
create table prodcutssales(id int primary key identity,productid int foreign key references tblproducts(id),unitprice int,quantitysoled int)
insert into tblproducts values('tv','it is one of the good one'),('laptop','this one is updated version'),('desktop','hp is the best one')
insert into prodcutssales values(3,450,5),(2,250,7),(3,450,4),(3,450,9)
select * from tblproducts where id  not in(select  productid from prodcutssales)
drop table productssales
select * from tblproducts
select * from productssales
select id,name,description from tblproducts
 right join productssales
on tblproducts.id=productssales.id
where tblproducts.id is null
