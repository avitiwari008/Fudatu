
Delimiter $$

CREATE PROCEDURE Cafe_Working_hours(IN Cafe_Opening time, In Cafe_Closing time, out total int )
Begin

Declare OpeningTime time;
Declare ClosingTime time;
set OpeningTime=Cafe_Opening;
Set ClosingTime=Cafe_Closing;
select count(*)  into total from Cafes where  Cafe_ClosingTime between OpeningTime and ClosingTime;

END$$


call Cafe_Working_hours('15:30:00','21:00:00',@total);

Select  @total


Delimiter $$
CREATE PROCEDURE Cafe_Working_hour(IN Cafe_Opening time,  out total int )
Begin

Declare OpeningTime time;
set OpeningTime=Cafe_Opening;
select count(*)  into total from Cafes where  Cafe_OpeningTime >OpeningTime ;

END$$


call Cafe_Working_hour('09:30:00',@total);

Select  @total


Delimiter //
Create Procedure Order_stat
(IN Cafe_Opening time,  out total int )

Begin

Declare OpeningTime time;
set OpeningTime=Cafe_Opening;
select count(*)  into total from Cafes where  Cafe_OpeningTime >OpeningTime ;

END //

call Cafe_Working_hour('09:30:00',@total);

Select  @total


Create Database Movies
Use Movies
Create Table movies(
title varchar (80),
actor varchar (30),
actress varchar (30),
genre varchar (30),
year int
);

Create Database books
Use books
Create Table books(
isbn varchar (80),
title varchar (30),
authors varchar (30),
price float
);
