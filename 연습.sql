#실습하기 1-1
CREATE DATABASE `testDB`;
DROP DATABASE `testDB`;

#실습하기 1-2
CREATE TABLE `user1`(
	`uid` VARCHAR(10),
	`name` VARCHAR(10),
	`hp` VARCHAR(13),
	`age` int
);

DROP TABLE `user1`;

#실습하기 1-3
INSERT INTO `user1` VALUES ('a101','김유신','010-1234-1111',25);
INSERT INTO `user1` VALUES ('a102','김춘추','010-1234-2222',23);
INSERT INTO `user1` VALUES ('a103','장보고','010-1234-3333',32);
INSERT INTO `user1` (age, `name`,uid,hp )VALUES (45,'강감찬','a104','010-1234-4444');
INSERT INTO `user1` SET `name` ='이순신', age=51, hp ='010-1234-5555' uid='a105';

#실습하기 1-4
SELECT `uid`,`name`,`age`,`hp` FROM `user1`;
SELECT `name`,`uid`,`hp` FROM `user1`;
SELECT * FROM `user1`;
SELECT * FROM `user1` WHERE `uid`='a101';
SELECT * FROM `user1` WHERE `name`='김춘추';
SELECT * FROM `user1` WHERE `age`>30;

#실습하기 1-5
UPDATE `user1` SET hp '010-1234-1234';
UPDATE `user1` SET uid 'b101',`name`='홍길동';
UPDATE `user1` SET uid 'a101', `name`='김유신' WHERE age = 25;
UPDATE `user1` SET hp ='010-1234-1111' WHERE `name` = '김유신';
UPDATE `user1` SET uid = 'a102', `name`='김춘추',hp='010-1234-2222' WHERE age =23;

#실습하기 1-6
DELETE FROM `user1` WHERE uid='a101';
DELETE FROM `user1` WHERE uid ='a102' AND age=25;
DELETE FROM `user1` WHERE age>=30;

#실습하기 2-1
CREATE TABLE `user2`(
	`uid` VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`hp` CHAR(13) UNIQUE,
	`age` int
);

# 실습하기 2-2
CREATE TABLE `user3`(
	`uid` VARCHAR(10) PRIMARY key
	`name` VARCHAR(10)
	`hp` CHAR(13) UNIQUE,
	`age` INT
);

#실습하기 2-3
CREATE TABLE `user5`(
	`seq` INT auto_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`gender` TINYINT,
	`age` INT,
	`addr` varchar(255),
);

#실습하기 2-4
CREATE TABLE `user4`(
	`uid` vachar(10) PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`hp` CHAR(13) UNIQUE,
	`age` INT DEFAULT 10
);

#실습하기 2-5
CREATE TABLE `user6` SELECT * FROM `user5`;
SELECT * FROM `user6`;

#실습하기 2-6
CREATE TABLE `user7` LIKE `user5`;

#실습하기 2-7
INSERT INTO `user7` SELECT * FROM `user5`l;
INSERT INTO `user7`(`name`,`gender`,`age`,`addr`)
SELECT `name`,`age`,`addr` FROM `user5`;

SELECT * FROM `user7`;


