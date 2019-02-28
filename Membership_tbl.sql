-- Membership table

Select * from membership;

Insert into membership(MembershipType,Membership_id)
values ('Gold','1');
Insert into membership(MembershipType,Membership_id)
values ('Platinum','2');

Insert into membership(MembershipType,Membership_id)
values ('Silver','3');

Alter table membership add constraint Pk_Membership_id primary key (Membership_id);

Insert into membership(Membership_id)
values ('1');

Insert into membership(MembershipType)
values ('Silver');

Delete from membership where Membership_id='1'


