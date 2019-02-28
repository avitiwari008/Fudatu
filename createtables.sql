Use zomato;
Show Tables;

Create Table System_Admin(
Admin_id int not null auto_increment,
Amdin_userName varchar(30) not null,
Primary key(Admin_id)

);
Drop table Restaurants;

Create Table Restaurants(
Restaurant_id int not null auto_increment,
Restaurant_name varchar(30) not null,
Restaurant_OpeningTime time,
Restaurant_ClosingTime time,
Delivery varchar(50),
DineIn varchar(50),
Menu_id int,
Bars varchar(50),
Primary key(Restaurant_id)
);



Alter table restaurants add Delivery varchar(50);
Alter table restaurants add DineIn varchar(50);
Alter table restaurants add Menu_id int;
Alter table restaurants add Bars varchar(50);

Select * from Restaurants;
Create Table Cafes(
Cafe_id int not null auto_increment,
Cafe_name varchar(30) not null,
Cafe_OpeningTime time,
Cafe_ClosingTime time,
Menu_id int,
Bars varchar(50),
Address_id int,
Primary key(Cafe_id)
);

Create Table Customer(
Customer_id int not null ,
Customer_Fname varchar(50) ,
Customer_Lname varchar(50),
Customer_PhoneNumber varchar (50),
Address_id int,

Primary key(Customer_id)
);


Create Table Address(
Address_id int not null ,
AddressLine1 varchar(50) ,
AddressLine2 varchar(50),
City varchar (50),
State varchar(50),
Country varchar(50),
ZipCode varchar(50),
Primary key(Address_id)
);

Create Table Membership(
MembershipType varchar(50)
); 

Drop table OrderTable;
Create Table OrderTable(
Order_id int not null auto_increment,
Order_Date date,
Order_Status varchar (90),
Customer_id int,
Primary Key (Order_id),
Foreign Key FK_customerid (Customer_id) References Customer (Customer_id)

);

Create Table Reviews(
Reviews varchar(100),
Customer_id int,
constraint FK_Customer_id foreign key(Customer_id) References Customer(Customer_id)
);
Alter table Reviews add  Cafe_id int;

Alter table Reviews add constraint Fk_Restaurant_id foreign key (Restaurant_id) references Restaurants(Restaurant_id);
Alter table Reviews add constraint Fk_Cafe_id foreign key (Cafe_id) references Cafes(Cafe_id);


Create Table Orderstatus(
Order_id int,
Order_Status varchar (90),
Customer_id int,
Foreign Key FK_orderid (Order_id) References ordertable (Order_id)

);

Create Table Orderstatus(
Order_id int,
Order_Status varchar (90),
Customer_id int,
Foreign Key FK_orderid (Order_id) References ordertable (Order_id)

);

Create Table Billing(
Bill_no int auto_increment,
Order_id int,
Customer_id int,
Order_Date date,
primary key(Bill_no),
Foreign Key FK_orderidB (Order_id) References ordertable (Order_id),
Foreign Key FK_cusid (Customer_id) References customer (Customer_id)

);




