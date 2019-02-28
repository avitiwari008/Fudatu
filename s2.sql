Use zomato;
use films

Select * from tbl_names

create table tbl_names (name varchar(20));
insert into tbl_names values ('Yusuf');
insert into tbl_names values ('Rahul');
insert into tbl_names values ('Kiran');
insert into tbl_names values ('Srikant');
insert into tbl_names values ('Mengyue');
insert into tbl_names values ('Mengyue');

Create view uniqu_name
As
Select Distinct name from tbl_names;

select * from uniqu_name;
Insert into uniqu_name values('avi');

Show Create view uniqu_name

use dvdrentals
Select * from authors
Select AuthFN,AuthID
from authors
Group BY AuthID
order by AuthLFN ASC

Show database
SELECT DB_NAME() AS [Current Database];
SELECT DATABASE() FROM DUAL;
Show tables

Select * from authors

(Select AuthFN from authors where AuthID='1006')
INTERSECT
(Select AuthFN from authors where AuthID='1007')


Select IFNULL(AuthFN,AuthMN) As name from authors where  AuthID='1006'

	
Select AuthFN as Fname, AuthLFN as B from authors

Select AVG(AuthMN) from authors
Select (AuthMN) from authors

Select * from authors
Select AVG(OrderID) from bookorders
Select @ord:=Quantity , @bID:=BookID 
from bookorders
where OrderID='107'
Select OrderID from bookorders where Quantity=@ord

Select AuthFN, AuthMN from authors
Group BY AuthFN with Rollup

Create table EMPLOYEE_TABLE 
( ssn Integer(9) not null,
last_name varchar(20) not null,
first_name varchar(20) not null,
middle_name varchar(20) not null,
st_address varchar(30) not null,
city char(20) not null,
state char(2) not null,
zip integer(4) not null,
date_hired Date null);

alter table EMPLOYEE_TABLE AS EMP
Select * from books

Select books.BookTitle, b.COPYRIGHT
from books
Join books as b
on books.BookTitle=b.BookID

Use lab6
Select * from bank

