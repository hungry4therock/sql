#2021-05-21

DROP TABLE 'Book';
DROP TABLE 'Customer';
DROP TABLE 'Orders';

#1



CREATE TABLE `tbl_user` (
	`userid`	  VARCHAR(10) PRIMARY KEY,
	`userName` VARCHAR(10) NOT NULL ,
	`userHp`	  CHAR(13) NOT NULL ,
	`userAddr` VARCHAR(100) 
);


INSERT INTO `tbl_user` (`userid`, `userName`, `userHp`) VALUES ('choi', '최영', '010-1234-0004');
INSERT INTO `tbl_user` (`userid`, `userName`, `userHp`,`userAddr`) VALUES ('jang', '장보고', '010-1234-0002','완도군');
INSERT INTO `tbl_user` (`userid`, `userName`, `userHp`,`userAddr`) VALUES ('kang', '강감찬', '010-1234-0003','서울시');
INSERT INTO `tbl_user` (`userid`, `userName`, `userHp`,`userAddr`) VALUES ('kim', '김유신', '010-1234-0001','김해시');
INSERT INTO `tbl_user` (`userid`, `userName`, `userHp`) VALUES ('lee', '이순신', '010-1234-0005');


#2
CREATE TABLE `tbl_buy`(
	`userid` VARCHAR(10),
	`prodName` VARCHAR(10),
	`price` INT ,
	`amount` TINYINT  
);

INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('kim','햄버거','2500',1);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('jang','컵라면','1500',3);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('kang','샌드위치','3000',1);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('choi','삼각김밥','1200',2);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('lee','콜라','900',2);

INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('lee','햄버거','2500',2);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('choi','컵라면','1500',1);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('jang','샌드위치','3000',1);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('kim','삼각김밥','1200',3);
INSERT INTO `tbl_buy`(`userid`,`prodName`,`price`,`amount`)VALUES ('kim','콜라','900',1);

#3
SELECT a.`userid`,a.`userName`,a.`userHp`,b.`prodName`,b.`price`,b.`amount`
FROM `tbl_user` AS a
JOIN `tbl_buy` AS b
USING (`userid`)
WHERE a.`userName`='이순신';