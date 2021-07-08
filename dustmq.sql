#5
SELECT * FROM `Book`;

#6
SELECT DISTINCT `publisher` FROM `Book`;

#7
SELECT * FROM `Book` WHERE `price`<20000;

#8
SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000; 
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000; 

#9
SELECT * FROM `Book` WHERE `publisher` = '굿스포츠' OR `publisher`='대한미디어';
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#10
SELECT `publisher` FROM `Book` WHERE `bookname`='축구의 역사';

#11
SELECT `publisher` FROM `Book` WHERE `bookname` LIKE '%축구%';

#12
SELECT * FROM `Book` WHERE `bookname` LIKE '%구%';

#13
SELECT * FROM `Book` WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

#14
SELECT * FROM `Book` ORDER BY `bookname` ASC;

#15
SELECT * FROM `Book` ORDER BY `price` ASC, `bookname` ASC;

#16
SELECT * FROM `Book` ORDER BY `price` DESC, `bookname` ASC;

#17
SELECT SUM(`saleprice`) AS `총판매액` FROM `Orders`;

#18
SELECT SUM(`saleprice`) AS `총매출` FROM `Orders` WHERE `custid`=2;

#19
SELECT 
	SUM(`saleprice`) AS `총 판매액`, 
	AVG(`saleprice`) AS `평균값`, 
	MIN(`saleprice`) AS `최저가`, 
	MAX(`saleprice`) AS `최고가`
FROM `Orders`;

#20
SELECT count(*) AS `판매건수` FROM `Orders`;

#21
SELECT `custid`, COUNT(*) AS `수량` FROM `Orders`
WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING `수량` >= 2;

#22
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid;



SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
WHERE a.custid = b.custid;

#23
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid
ORDER BY a.custid;

#24
SELECT `name`,SUM(`saleprice`) FROM `Customer` AS a
JOIN `Orders` AS b
ON a. custid=.b.custid;

SELECT `name`, `saleprice` FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid;

#25
SELECT `name`, SUM(`saleprice`) FROM `Customer` AS a 
JOIN `Orders` AS b 
ON a.custid =  b.custid
GROUP BY `name`
ORDER BY `name`;

#26
SELECT * FROM `Customer` AS a
JOIN `Orders` AS b
ON a.custid = b.custid
JOIN `Book`   AS c
ON b.bookid = c.bookid; 


#27
SELECT `name`, `bookname` 
FROM `Customer` AS a
JOIN `Orders` AS b 
ON a.custid=b.custid
JOIN `Book` AS c 
ON b.bookid = c.bookid
WHERE `price`=20000;

#28
SELECT `bookname` FROM `Book`
WHERE `price` = (SELECT MAX(`price`) FROM `Book`);

#29
INSERT INTO `Book` (`bookname`, `publisher`, `price`)
VALUES ('스포츠 의학', '한솔의학서적', 90000);

#30
INSERT INTO `Book`(`bookname`,`publisher`)
VALUES ('스포츠의학','한솔의학서적');

#31
UPDATE `Customer` SET `address` ='대한민국부산'
WHERE `custid` = 5;

#32
DELETE FROM `Customer` WHERE `custid`=5;

