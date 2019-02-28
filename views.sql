-- views

Create View restaurant_on_reviews
as
Select concat_ws('', Customer_Fname,Customer_Lname) as CustomerName, reviews,Cafe_Name
 from Customer as C Inner Join reviews as r on c.Customer_id=r.Customer_id
 Inner join cafes as cf on r.Cafe_id= cf.Cafe_id
 

 
 
 Select * from restaurant_on_reviews


Create view vw_membershiptype
as

Select concat_ws('', Customer_Fname,Customer_Lname) as CustomerName ,MembershipType
from Customer as c Inner Join membership as m
ON c.Membership_id= m.Membership_id
order By m.Membership_id

Select * from vw_membershiptype