-- Customer data


DELIMITER $$

CREATE PROCEDURE addcust (IN Customer_id int,IN Customer_Fname varchar(50),  Customer_Lname varchar(50),IN Customer_PhoneNumber varchar (50),IN Address_id int)
BEGIN
    insert into Customer (Customer_id,Customer_Fname,Customer_Lname,Customer_PhoneNumber,Address_id) values (Customer_id,Customer_Fname,Customer_Lname,Customer_PhoneNumber,Address_id);
END $$

Select * from Customer;

call addcust('300','Jack','Sparrow','7896547878','400');
  call addcust('301','John','Dee','8896547878','401');
   call addcust('302','Jonny','Dep','9896547878','402');
    call addcust('303','Sara','Tancradey','5896547878','403');
     call addcust('304','Jane','Will','7896547555','404');
      call addcust('305','Jim','Beam','9896547555','405');
       call addcust('306','Raga','Gandhi','9196547555','406');
        call addcust('307','Sam','Billing','8966565655','407');
         call addcust('308','Simi','Cook','4966565557','408');
          call addcust('309','Akoi','M','9966565558','409')
          
          Delete from Customer where Customer_id='300';

Alter table customer add column Membership_id int

Alter table customer add  constraint FK_Membership_id foreign key (Membership_id) references  membership(Membership_id);

Update customer set Membership_id ='1' where customer_id='300';
Update customer set Membership_id ='2' where customer_id='301';
Update customer set Membership_id ='3' where customer_id='302';
Update customer set Membership_id ='2' where customer_id='303';
Update customer set Membership_id ='3' where customer_id='304';
Update customer set Membership_id ='1' where customer_id='305';
Update customer set Membership_id ='2' where customer_id='306';
Update customer set Membership_id ='1' where customer_id='307';
Update customer set Membership_id ='1' where customer_id='308';
Update customer set Membership_id ='3' where customer_id='309';
