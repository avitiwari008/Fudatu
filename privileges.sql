-- admin

Select * from system_admin;

DELIMITER //
CREATE PROCEDURE create_user1
(IN user_nm CHAR(20), IN user_ps CHAR(20))
BEGIN	
  SET @host_name := 'localhost';
  SET @user_name := avitiwari08;
  SET @pass := qaz08;
  
  SET @db_nm:='zomato';
  
SET @sql := CONCAT("CREATE USER ", QUOTE(@user_name), "@", QUOTE(@host_name), " IDENTIFIED BY ", QUOTE(@pass));
PREPARE stmt FROM @sql;
EXECUTE stmt;
SET @GRANT_PERMISSIONS = CONCAT("GRANT ALL  ON ", @db_nm ," .cafes, .restaurants TO ", QUOTE(@user_name), "@",QUOTE(@host_name));
PREPARE statement FROM @GRANT_PERMISSIONS;
EXECUTE statement;
  
END //
DELIMITER ;
Drop procedure create_user1;

Create user 'avitiwari08'@'localhost'identified by 'qaz08';
Grant All privileges on zomato.restaurants to 'avitiwari08'@'localhost'; 
Grant All privileges on zomato.menus to 'avitiwari08'@'localhost'; 
Grant All privileges on zomato.recipees to 'avitiwari08'@'localhost'; 

select * from mysql.user;

use zomato