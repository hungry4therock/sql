#직원 테이블 생성
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

#부서 테이블 생성
CREATE TABLE `depart` (
	`depno`	TINYINT PRIMARY KEY,
	`name`	VARCHAR(10),
	`tel`		CHAR(12)
);

INSERT INTO `depart`VALUE('101','영업1부','051-512-1001');
INSERT INTO `depart` VALUE('102','엽업2부','051-512-1002');
INSERT INTO `depart`VALUE('103','영업3부','051-512-1003');
INSERT INTO `depart` VALUE('104','엽업4부','051-512-1004');
INSERT INTO `depart`VALUE('105','영업5부','051-512-1005');
INSERT INTO `depart` VALUE('106','엽업지원부','051-512-1006');
INSERT INTO `depart` VALUE('107','인사부','051-512-1007');

#매출 테이블 생성
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

#4-1

#4-2

#4-3

#4-4
SELECT SUM(`sales`) AS `합계` FROM `sale`;
SELECT AVG(`sales`) AS `ㅁㅁ` from `sale`;
SELECT MAX(`sales`) AS `maxim` FROM `sale`;
SELECT MIN(`sales`) AS `minimum` FROM `sale`;
SELECT COUNT(`sales`) AS `갯수` FROM `sale`;
SELECT COUNT(*) AS `aaaa` FROM `sale`;

#4-5
SELECT * FROM `sale` GROUP BY `uid`;
SELECT `uid`,COUNT(*) AS `건수`FROM `sale` GROUP BY `uid`;

#4-6
SELECT `uid`,SUM(`sales`) AS `gkqrP` FROM `sale`
GROUP BY `uid`
HAVING SUM(`sales`)>=200000;

SELECT `uid`,`year`,SUM(`sales`) AS `gkqrP`
FROM `sale`
WHERE `sales`>=100000
GROUP BY `uid`,`year`
HAVING SUM(`sales`)>=200000
ORDER BY `gkqrP` DESC;

#4-7
CREATE TABLE `sale2` LIKE `sale`;
INSERT INTO `sale2` SELECT * FROM `sale`;
UPDATE `sale2` SET `year`=`year`+3;

SELECT * FROM `sale` UNION SELECT * FROM `sale2`;
SELECT * FROM `sale`
UNION
SELECT * FROM `sale2`;
SELECT `uid`,`year`,SUM(`sales`) AS `gkqrP`
FROM `sale`
GROUP BY `uid`,`year`
UNION
SELECT `uid`,`year`SUM(`sales`) AS `gkqrP`
FROM `sale2`
GROUP BY `uid`,`year`
ORDER BY `year` ASC, `gkqrP`DESC,;


