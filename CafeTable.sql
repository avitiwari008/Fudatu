-- Cafe Table

Select * from Cafes;
Drop procedure addcafe;

DELIMITER $$

CREATE PROCEDURE addcafe (IN Cafe_name varchar(30),IN Cafe_OpeningTime time,  IN Cafe_ClosingTime time,IN Menu_id int,IN Bars varchar(50),IN Address_id int)
BEGIN
    insert into Cafes (Cafe_name,Cafe_OpeningTime,Cafe_ClosngTime,Menu_id,Bars,Address_id) values (Cafe_name,Cafe_OpeningTime,Cafe_ClosingTime,Menu_id,Bars,Address_id);
END $$
 
 
 call addcafe('Goodluck','10:00:00','21:30:00','110','No','200');
  call addcafe('Torquise','13:00:00','22:30:00','111','No','201');
   call addcafe('Thikana','14:00:00','22:00:00','112','Yes','202');
    call addcafe('AgentJack','14:00:00','20:30:00','113','No','203');
     call addcafe('Malaba','14:00:00','22:30:00','114','Yes','204');
      call addcafe('SkyBar','14:00:00','21:00:00','115','No','205');
       call addcafe('Area1','10:00:00','19:30:00','116','No','206');
        call addcafe('Tatva','09:00:00','15:30:00','117','No','207');
         call addcafe('Culture','14:00:00','23:30:00','118','Yes','208');
          call addcafe('Exotica','10:00:00','19:30:00','119','No','209')
      
Alter table Cafes add constraint FK_Address_id foreign key (Address_id) references Address(Address_id);