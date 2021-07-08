DROP DATABASE `Employee`;


CREATE TABLE `Employee`(
	`uid` VARCHAR(5) PRIMARY KEY,
	`name` VARCHAR(10),
	`gender` TINYINT,
	`hp` CHAR(13) ,
	`email` VARCHAR(30),
	`pos` VARCHAR(10),
	`dep` TINYINT, 
	`rdate` DATETIME 
);

sudo mysql -u root; 

grant all privileges on *.* TO '828hjchoi'@localhost identified BY '1234';

DELETE FROM `Employee` WHERE `uid`='a101';