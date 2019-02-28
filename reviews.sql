Select * from cafes
use zomato

Select * from reviews
Insert into reviews(reviews) 

Select * from restaurants


DELIMITER $$

CREATE PROCEDURE addreview (IN reviews varchar(100),IN Customer_id int ,  IN Restaurant_id int,IN Cafe_id int)
BEGIN
    insert into reviews (reviews,Customer_id,Restaurant_id,Cafe_id) values (reviews,Customer_id,Restaurant_id,Cafe_id);
END $$


Call addreview('Good Food','300','1','2');
Call addreview('Faboulous Ambience','308','5','7')
Call addreview('Not good service','302','2','3')
Call addreview('Chill Place','304','7','6')

Call addreview('Expensive for 2 ppl','305','6','4')
Call addreview('Chill Place','309','3','5')
Call addreview('Less crowded ','301','4','1')

Call addreview('Worst Place ','303','8','8')

Call addreview('Not quality food ','303','9','2')
Select * from reviews
use zomato


Alter table reviews drop column Review_image 
