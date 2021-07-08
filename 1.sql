CREATE TABLE `member` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp`		CHAR(13),
	`pos`		VARCHAR(10),
	`dep`		TINYINT,
	`rdate`	DATETIME
);

INSERT INTO `member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `member` VALUES ('a102', '김유신',   '010-1234-1002', '차장', 101, NOW());
INSERT INTO `member` VALUES ('a103', '김춘추',   '010-1234-1003', '사원', 101, NOW());
INSERT INTO `member` VALUES ('a104', '장보고',   '010-1234-1004', '대리', 102, NOW());
INSERT INTO `member` VALUES ('a105', '강감찬',   '010-1234-1005', '과장', 102, NOW());
INSERT INTO `member` VALUES ('a106', '이성계',   '010-1234-1006', '차장', 103, NOW());
INSERT INTO `member` VALUES ('a107', '정철',     '010-1234-1007', '차장', 103, NOW());
INSERT INTO `member` VALUES ('a108', '이순신',   '010-1234-1008', '부장', 104, NOW());
INSERT INTO `member` VALUES ('a109', '허균',     '010-1234-1009', '부장', 104, NOW());
INSERT INTO `member` VALUES ('a110', '정약용',   '010-1234-1010', '사원', 105, NOW());
INSERT INTO `member` VALUES ('a111', '박지원',   '010-1234-1011', '사원', 105, NOW());

CREATE TABLE `depart` (
	`depno`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10),
	`tel`		CHAR(12)
);

INSERT INTO `depart` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `depart` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `depart` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `depart` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `depart` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `depart` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `depart` VALUES (107, '인사부', '051-512-1007');

CREATE TABLE `sale` (
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`uid`		VARCHAR(10),
	`year`	YEAR,
	`month`	TINYINT,
	`sales`	INT
);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `sale` (`uid`, `year`, `month`, `sales`) VALUES ('a108', 2020, 2,  76000);

SELECT * FROM `member` WHERE `name`='김유신';
SELECT * FROM `member` WHERE `pos`='차장' AND `dep`=101;
SELECT * FROM `member` WHERE `pos`='차장'OR `dep`=101;;
SELECT * FROM `member` WHERE `name`!='김춘추';
SELECT * FROM `member` WHERE `name`<>'김춘추';

SELECT * FROM `member` WHERE `pos` = '사원' OR `pos`='대리';
SELECT * FROM `member` WHERE `pos` IN ('사원','대리');
SELECT * FROM `member` WHERE `dep` IN (101,102,103);
SELECT * FROM `member` WHERE `name`like'%신';
SELECT * FROM `member` WHERE `name` LIKE '김%';

SELECT * FROM `member` WHERE `name` LIKE '김__';
SELECT * FROM `member` WHERE `name` LIKE '_성_';
SELECT * FROM `member` WHERE `name` LIKE '정_';
SELECT * FROM `sale` WHERE `sales` >50000;
SELECT * FROM `sale` WHERE `sales` >=50000 AND `sales`<100000 AND `month`=1;

SELECT * FROM `sale` WHERE `sales`BETWEEN 50000 AND 100000;
SELECT * FROM `sale` WHERE `sales` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `sale` WHERE `year`IN(2020);
SELECT * FROM `sale` WHERE `month` IN(1,2);

SELECT * FROM `sale` ORDER BY sales;
SELECT * FROM `sale` ORDER BY sales ASC ;
SELECT * FROM `member` ORDER BY sales DESC ;
SELECT * FROM `member` ORDER BY NAME ;
SELECT * FROM `member` ORDER BY `NAME` DESC ;

SELECT * FROM `member` ORDER BY `rdate` asc ;
SELECT * FROM `sale` WHERE `sales` > 50000 ORDER BY `sales` DESC LIMIT 3 ;
SELECT * FROM `sale`
WHERE `sales`>50000 
ORDER BY `YEAR`,`MONTH`,`sales` DESC ;

SELECT * FROM `sale` LIMIT 3;
SELECT * FROM `sale` LIMIT 0,3;
SELECT * FROM `sale` LIMIT 1,3;
SELECT * FROM `sale` LIMIT 4,5;
SELECT * FROM `sale` ORDER BY `sales` DESC LIMIT 3,5 ;

SELECT * FROM `sale`  WHERE `sales` < 50000 ORDER BY `sales` DESC LIMIT 3;
SELECT * FROM `sale`
WHERE `sales`>50000
ORDER BY `year` DESC, `month`,`sales` DESC
LIMIT 5;

SELECT SUM(`sales`) AS `gkqrP` FROM `sale`;
SELECT AVG(`sales`) AS `vudrbs` FROM `sale`;
SELECT MAX(`sales`) AS `chleorkqt` FROM `sale`;
SELECT MIN(`sales`) AS `chlthrkqt` FROM `sale`;
SELECT COUNT(`sales`) AS `rottn` FROM `sale`;

SELECT COUNT(*) AS `rottn` FROM `sale`;
SELECT SUBSTRING(`hp`,10,4) AS `wjsghkqjsgh Rmxwkfl` FROM `member`;
INSERT INTO `member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

SELECT * FROM `sale` GROUP BY `uid`;
SELECT * FROM `sale` GROUP BY `year`;
SELECT `uid` FROM `sale` GROUP BY `uid`,`year`;
SELECT `uid`,COUNT(*) AS `rjstn` FROM  `sale` GROUP BY `uid`;
SELECT `uid`,SUM(`sales`) AS `gkqrP`FROM `sale` GROUP BY `uid`;

SELECT `uid` AVG(sales) AS `vudrbs`  FROM `sale` GROUP BY `uid`;
SELECT `uid` SUM(sales) AS `gkqrP`  FROM `sale` GROUP BY `uid`;
SELECT `uid`,`year`, SUM(sales) AS `gkqrP`
FROM `sale`
GROUP BY `uid`,`year`;
SELECT `uid`,`year`,SUM(sales) AS `gkqrP`
FROM `sale`
GROUP BY `uid`,`year`
ORDER BY `year` ASC, `gkqrP` DESC;
SELECT `uid`,`year`,SUM(`sales`) AS `gkqrP`
FROM `sale`
WHERE `sales` >= 50000
GROUP BY 	`uid`, `YEAR`
ORDER BY `gkqrP` DESC;

SELECT `seq`,`uid`,`sales` FROM `sale`
UNION 
SELECT `seq`,`uid`,`sales` FROM `sale2`

SELECT `seq`,`uid`,`sales` FROM `sale`
UNION ALL
SELECT `seq`,`uid`,`sales` FROM `sale2`;

SELECT a.`seq`,a.`uid`,a.`sales`,b.`name`,b.`pos`
FROM `sale` AS a
JOIN `member` AS b
USING (`uid`);

SELECT * FROM `sale` AS a
join `member` AS b
ON a.uid=b.uid
JOIN `depart` AS c 
ON b.dep = c.depno;

SELECT * FROM `sale` 
LEFT JOIN `member`
ON `sale`.uid = `member`.uid;

SELECT * FROM `sale`
RIGHT JOIN `member`
ON `sale`.uid=`member`.uid;

SELECT a.`seq`,a.`uid`,a.`sales`,b.`name`,b.`pos`
FROM `sale` AS a
LEFT JOIN `member` AS b USING(`uid`);

SELECT a.`seq`,a.`uid`,a.`sales`,b.`name`,b.`pos`
FROM `sale` AS a
RIGHT JOIN `member` AS b 
USING(`uid`);

SELECT a.`seq`,a.`uid`,a.`sales`,b.`name`,b.`pos`,c.`name`
FROM `sale` AS a
JOIN `member` AS b
USING(`uid`)
JOIN `depart` AS c 
ON b.dep=c.depno
WHERE `sales`> 10000
ORDER BY `sales` DESC;
























828hjchoi