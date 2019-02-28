-- Subqueries


Select Cafe_name from Cafes where Address_Id IN (Select Address_id from Address where ZipCode='02215');


-- billing

Select * from billing
Delete from billing
Select * from ordertable

Drop Table billing

Insert into billing (Order_id,Customer_id,Order_Date)Select Order_id,Customer_id,Order_Date from ordertable where Customer_id='305'
select * from billing

Delimiter $$
Create trigger bill
After insert 
ON `ordertable`
For Each row 
Begin

Insert into billing(Order_id,Customer_id,Order_Date)
Values (New.Order_id,new.Customer_id,current_date());
End;
$$



Select * from ordertable;