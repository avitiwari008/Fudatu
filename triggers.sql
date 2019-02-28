-- order table
Select * from ordertable


use zomato


Delimiter ##
Create trigger Orderx
After insert 
ON `ordertable`
For Each row 
Begin

Insert into orderstatus(Order_id,Order_Status,Customer_id)
Values (New.Order_id,'In Kitchen',new.Customer_id);
End;
##



Select * from orderstatus;
Select * from ordertable;

Insert into ordertable (Order_id,Order_Date,Customer_id,Order_Time)
Values('3008',CurDate() , '303',Now());

Update table ordertable Set Order_Status ='Preparing';

Drop trigger Orderx

Delete from ordertable where Order_id='3001'

Select @stat=New.Order_id from ordertable;

Alter table ordertable Drop column Order_Status
Alter table ordertable Drop Primary key

Select * from orderstatus;
Alter table ordertable add constraint FK_Customerid Foreign key (Customer_id) references customer(Customer_id)
Select * from ordertable

CREATE EVENT e_orderstatus1
    ON SCHEDULE AT NOW() + Interval 1 minute
    DO Update orderstatus Set Order_Status='Out for delivery';

Alter table ordertable add column Order_Time time;

