#문제1.다음과 같은 속성을 가진 Book 테이블을 생성하시오.
CREATE TABLE `Book` (
	`bookid`			INT PRIMARY KEY AUTO_INCREMENT,
	`bookname`		VARCHAR(20),
	`publisher`		VARCHAR(20),
	`price`			INT
);

#문제2.다음과 같은 속성을 가진 Customer 테이블을 생성하시오.
CREATE TABLE `Customer` (
	`custid`		INT AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10),
	`address`	VARCHAR(30),
	`phone`		CHAR(13)
);
#문제3.다음과 같은 속성을 가진 Orders 테이블을 생성하시오.
CREATE TABLE `Orders` (
	`orderid`		INT AUTO_INCREMENT PRIMARY KEY,
	`custid`			IN828hjchoiT,
	`bookid`			INT,
	`saleprice`		INT,
	`orderdate`		DATE
);
#문제4.각 테이블에 그림과 같이 데이터를 삽입하시오.
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 역사', '굿스포츠', 7000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구아는 여자', '나무수', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('축구의 이해', '대한미디어', 22000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('골프 바이블', '대한미디어', 35000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('피겨교본', '굿스포츠', 8000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구의 추억', '이상미디어', 20000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('올림픽 이야기', '삼성당', 7500);
INSERT INTO `Book` (`bookname`, `publisher`, `price`) VALUES ('Olympic Champions', 'Pearson', 13000);

INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('박지성', '영국 맨체스터', '000-5000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `Customer` (`name`, `address`, `phone`) VALUES ('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `Customer` (`name`, `address`) VALUES ('박세리', '대한민국 대전');

INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,1,6000, '2014-07-01');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,3,21000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,5,8000, '2014-07-03');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,6,6000, '2014-07-04');
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,7,20000, '2014-07-05');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (1,2,12000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (4,8,13000, '2014-07-07');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,10,12000, '2014-07-08');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (2,10,7000, '2014-07-09');									   
INSERT INTO `Orders` (`custid`, `bookid`, `saleprice`, `orderdate`) VALUES (3,8,13000, '2014-07-10');									   



#문제24
#문제25
#문제26
#문제27
#문제28
#문제29
#문제30
#문제31
#문제324444');