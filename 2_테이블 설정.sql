#날짜:2021/05/17
#이름:최현진
#내용:2.테이블 설정

#실습하기 2-1
CREATE TABLE `USER2`(
	`uid` VARCHAR(10) PRIMARY key,
	`name` VARCHAR(10),
	`hp` CHAR(13),
	`age` TINYINT	
);

#실습하기 2-2
CREATE TABLE `USER3`(
	`uid` VARCHAR(10) PRIMARY key
	
);

#실습하기 2-4
CREATE TABLE `USER5`(
	`seq` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`gender` TINYINT,
	`age` INT,
	`addr` VARCHAR(255)
);

INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('김유신',1,25,'김해시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('김춘추',1,21,'경주시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('장보고',1,35,'김해시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('신사임당',2,27,'김해시');
INSERT INTO `USER5`(`name`,`gender`,`age`,`addr`) VALUES ('이순신',1,51,'김해시');

#실습하기 2-5
CREATE table `USER6` SELECT * FROM `USER5`;
SELECT * FROM `USER6`;

#실습하기 2-6
CREATE TABLE `USER7` LIKE `USER5`;

#실습하기 2-7
INSERT INTO `USER7` SELECT * FROM `USER5`;

INSERT INTO `USER7` (`name`,`gender`,`age`,`addr`)
SELECT `name`,`gender`,`age`,`addr` FROM `USER5`;





