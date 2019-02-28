--- Recipee

Create Table Menus(
Menu_id int not null,
Category_Id int ,
constraint FK_Categ_Id foreign key (Category_id) References Food_Category(Category_id),

Primary key(Menu_id)
);

Drop table Menus

Select * from  Menus
-- category


Create Table Food_Category(
Category_id int not null auto_increment,
Category_Name varchar(100) not null,

Primary key(Category_id)
);



Delimiter $$
CREATE PROCEDURE addCat (IN Category_Name varchar(100))
BEGIN
    insert into Food_Category(Category_Name) values (Category_Name);
END $$

call addCat('Entree');
call addCat('MainCourse');
call addCat('Desserts');

Select * from Food_Category









Delimiter $$
CREATE PROCEDURE addMenu (IN Recipee_id int,IN Recipee_Title varchar(90),IN Category_id int)
BEGIN
    insert into recipees(Recipee_id,Recipee_Title,Category_id) values (Recipee_id,Recipee_Title,Category_id);
END $$

Drop procedure addMenus;
Delete  from Menus
call addMenu('1000','Pizza','2');
call addMenu('1001','Pasta','1');
call addMenu('1002','Chciken Masala','2');
call addMenu('1003','Brownie','3');
call addMenu('1004','Tenders','2');
call addMenu('1005','Macroni','1');

Select * from recipees


Select * from food_category

Alter table Menus rename to Recipees;



Delimiter $$
CREATE PROCEDURE addMenus (IN Menu_id int,IN Category_id int)
BEGIN
    insert into Menus(Menu_id,Category_id) values (Menu_id,Category_id);
END $$


call addMenus('110','1');
call addMenus('110','2');
call addMenus('110','3');
call addMenus('111','2');
call addMenus('111','3');
call addMenus('112','2');
call addMenus('112','3');
call addMenus('112','1');
call addMenus('113','2');
call addMenus('113','1');
call addMenus('114','3');
call addMenus('114','2');
call addMenus('115','3');
call addMenus('115','2');
call addMenus('116','1');
call addMenus('116','2');
call addMenus('117','1');
call addMenus('118','2');
call addMenus('119','3');
call addMenus('119','2');

Delete from menus
Select * from menus
Select * from recipees

Alter table menus Add constraint Pk_Menu_id Primary Key(Menu_id)

