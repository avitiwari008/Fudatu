Use zomato;

DELIMITER $$

CREATE PROCEDURE addrest (IN Restaurant_name varchar(30),IN Restaurant_OpeningTime time,  IN Restaurant_ClosingTime time,IN Delivery varchar(50),IN DineIn varchar(50),IN Menu_id int, IN Bars varchar(50))
BEGIN
    insert into Restaurants (Restaurant_name,Restaurant_OpeningTime,Restaurant_ClosingTime,Delivery,DineIn,Menu_id,Bars) values (Restaurant_name,Restaurant_OpeningTime,Restaurant_ClosingTime,Delivery,DineIn,Menu_id,Bars);
END $$


Drop procedure addrest;

call addrest('Malaka','14:00:00','23:30:00','Yes','No','109','No')


Select * from Restaurants

Alter table restaurants 
DELIMITER $$

CREATE PROCEDURE addrestau (IN Delivery varchar(50),IN DineIn varchar(50),IN Menu_id int, IN Bars varchar(50))
BEGIN
    insert into Restaurants (Delivery,DineIn,Menu_id,Bars) values (Delivery,DineIn,Menu_id,Bars);
END $$

call addrestau('Yes','Yes','100','No');

Update Restaurants Set Address_id ='500' where Restaurant_id=1;
Update Restaurants Set Address_id ='501' where Restaurant_id=2;
Update Restaurants Set Address_id ='502' where Restaurant_id=3;
Update Restaurants Set Address_id ='503' where Restaurant_id=4;
Update Restaurants Set Address_id ='504' where Restaurant_id=5;
Update Restaurants Set Address_id ='505' where Restaurant_id=6;
Update Restaurants Set Address_id ='506' where Restaurant_id=7;
Update Restaurants Set Address_id ='507' where Restaurant_id=8;
Update Restaurants Set Address_id ='508' where Restaurant_id=9;
Update Restaurants Set Address_id ='509' where Restaurant_id=10;
Update Restaurants Set Address_id ='510' where Restaurant_id=1;

Alter table restaurants add column Address_id 

Select * from address

Select * from customer

Insert into system_admin(Customer_UserName,customer_pwd) values ('avitiwari08','qaz08')