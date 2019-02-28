DELIMITER $$

CREATE PROCEDURE addressinfo (IN Address_id int,IN AddressLine1 varchar(50),IN AddressLine2 varchar(50), IN City varchar (50),IN State varchar(50),IN Country varchar(50), IN ZipCode varchar(50))
BEGIN
    insert into Address (Address_id,AddressLine1,AddressLine2,City,State,Country,ZipCode) values (Address_id,AddressLine1,AddressLine2,City,State,Country,ZipCode);
END $$

call addressinfo('500','1171','tremont','Boston','MA','US','02215');
call addressinfo('501','1172','boylston','Boston','NJ','US','02215');
call addressinfo('502','1173','quensberry','Boston','MA','US','02155');
call addressinfo('503','1174','huntington','Cambridge','MA','US','02222');
call addressinfo('504','1175','quincy','Boston','MA','US','02225');
call addressinfo('505','1176','downtown','Jersey','NJ','US','02221');
call addressinfo('506','1178','roxburry','Boston','MA','US','01211');
call addressinfo('507','1179','roxburry','Boston','MA','US','01212');
call addressinfo('508','1180','tremont','Boston','MA','US','02215');
call addressinfo('509','1181','huntington','Cambridge','MA','US','02222');
call addressinfo('200','51','downtown','Jersey','NJ','US','02221');
call addressinfo('201','52','quensberry','Boston','MA','US','02155');
call addressinfo('202','53','quincy','Boston','MA','US','02225');
call addressinfo('203','54','tremont','Boston','MA','US','02215');
call addressinfo('204','55','boylston','Jersey','NJ','US','02215');
call addressinfo('205','56','boylston','Jersey','NJ','US','02217');
call addressinfo('206','57','boylston','Jersey','NJ','US','02218');
call addressinfo('207','58','boylston','Jersey','NJ','US','02225');
call addressinfo('208','59','tremont','Jersey','NJ','US','02325');
call addressinfo('209','60','huntington','Jersey','NJ','US','02425');
call addressinfo('400','120','roxburry','Boston','MA','US','01212');
call addressinfo('401','121','roxburr','Boston','MA','US','01221');
call addressinfo('402','122','roxb','Boston','MA','US','01251');
call addressinfo('403','123','quincy','Boston','MA','US','02225');
call addressinfo('404','124','quincy','Boston','MA','US','02225');
call addressinfo('405','125','quincy','Boston','MA','US','02225');
call addressinfo('406','126','downtown','Jersey','NJ','US','02221');
call addressinfo('407','127','quincy','Boston','MA','US','02225');
call addressinfo('408','128','boylston','Boston','NJ','US','02215');
call addressinfo('409','129','huntington','Jersey','NJ','US','02425');




 Update Address
 Set AddressLine1 ='1171',
 AddressLine2='tremont', 
 City='Boston', 
 State='NY', 
 Country='USA', 
 ZipCode='02224'
 where Address_id='500';
 
 
 Select * from Address