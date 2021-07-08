#날짜:2021/06/07
#이름:김철학
#내용:게시판 테이블 생성하기

#약관 테이블:
CREATE TABLE `JBOARD_TERMS`(
	`terms`     TEXT,
	`privacy` 	TEXT
);


#회원 테이블:
CREATE TABLE `JBOARD_MEMBER`(
	`uid` 	VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) UNIQUE,
	`email`	VARCHAR(20)	UNIQUE,
	`hp`		CHAR(13) 	UNIQUE,
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5) DEFAULT NULL,
	`addr1`	VARCHAR(255) DEFAULT NULL,
	`addr2`	VARCHAR(255) DEFAULT NULL,
	`regip`	VARCHAR(100),
	`rdate`	DATETIME	
);

#게시판 테이블:
CREATE TABLE `JBOARD_ARTICLE`(
	`seq`		INT AUTO_INCREMENT PRIMARY KEY,
	`parent`	INT DEFAULT 0,
	`comment`INT DEFAULT 0,
	`cate`	VARCHAR(10) DEFAULT 'free',
	`title`	VARCHAR(255) DEFAULT NULL,
	`content` TEXT, 
	`file`	TINYINT DEFAULT 0,
	`hit`		INT DEFAULT 0,
	`uid`		VARCHAR(20),
828hjchoi828hjchoi	`regip`	VARCHAR(100),
	`rdate`	DATETIME
	
);

"SELECT * FROM `JBOARD_TERMS`;";


# 파일 테이블
CREATE TABLE `JBOARD_FILE`(
	`seq`	INT AUTO_INCREMENT PRIMARY KEY,	
	`parent` 	INT,	
	`oriName`	VARCHAR(255),
	`newName`	VARCHAR(255),
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME 
);

SELECT MAX(`seq`) FROM `JBOARD_ARTICLE`;

SELECT a.*,b.`nick` FROM `JBOARD_ARTICLE` AS a
JOIN `JBOARD_MEMBER` AS b
ON a.uid = b.uid
ORDER BY `sec` DESC
LIMIT 0,10;

INSERT INTO `JBOARD_ARTICLE` (`title`, `content`, `uid`, `regip`, `rdate`)
SELECT `title`, `content`, `uid`, `regip`, `rdate` FROM `JBOARD_ARTICLE`;

SELECT COUNT(*) FROM `JBOARD_ARTICLE`;

SELECT * FROM `JBOARD_ARTICLE` WHERE  `seq`=224;

UPDATE `JBOARD_ARTICLE`
SET `hit` =`hit`+1
where `seq`=`224`;

SELECT * FROM `JBOARD_ARTICLE` AS a
LEFT JOIN `JBOARD_FILE` AS b
ON a.seq = b.parent
WHERE a.`seq`= `1`;


SELECT * FROM `JBOARD_ARTICLE` WHERE `parent`=258;
ORDER BY `seq` ASC;

SELECT a.*, b.nick FROM `JBOARD_ARTICLE` AS a
JOIN `JBOARD_MEMBER` AS b
a.uid = b.uid
WHERE a.parent = 0
ORDER BY `seq` ASC;


SELECT a.*, b.nick FROM `JBOARD_ARTICLE` AS a
JOIN `JBOARD_MEMBER` AS b
a.uid = b.uid
WHERE `parent`=258
ORDER BY `seq` ASC;