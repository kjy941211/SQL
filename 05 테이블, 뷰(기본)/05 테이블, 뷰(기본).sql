DROP DATABASE IF EXISTS tabledb;
CREATE DATABASE tabledb;

USE tabledb;

DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl( 
	userID 		CHAR(8) 	NOT NULL PRIMARY KEY,
	name		VARCHAR(10) NOT NULL,
	birthYear	INT 		NOT NULL,
	addr		CHAR(2) 	NOT NULL,
	mobile1		CHAR(3) 	NULL,
	mobile2		CHAR(8) 	NULL,
	height		SMALLINT 	NULL,
	mDate		DATE 		NULL
);

DROP TABLE IF EXISTS buytbl;

CREATE TABLE buytbl(
	num 		INT 		NOT NULL AUTO_INCREMENT PRIMARY KEY,
	userid 		CHAR(8) 	NOT NULL,
	prodName 	CHAR(6) 	NOT NULL,
	groupName 	CHAR(4) 	NULL,
	price 		INT 		NOT NULL,
	amount 		SMALLINT 	NOT NULL,
	FOREIGN KEY(userid) REFERENCES usertbl(userID)
);

INSERT INTO usertbl VALUES('LSG', '이승기', 1987, '서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO usertbl VALUES('KBS', '김범수', 1979, '경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO usertbl VALUES('KKH', '김경호', 1971, '전남', '019', '3333333', 177, '2007-7-7');

SELECT * 
FROM usertbl;

INSERT INTO buytbl VALUES(NULL, 'KBS', '운동화', NULL, 30, 2);
INSERT INTO buytbl VALUES(NULL, 'KBS', '노트북', '전자', 1000, 1);
INSERT INTO buytbl VALUES(NULL, 'JYP', '모니터', '전자', 200, 1); -- 에러남.

SELECT * 
FROM buytbl;


DROP TABLE IF EXISTS buytbl;
DROP TABLE IF EXISTS usertbl;
CREATE TABLE usertbl (
	userID 		CHAR(8) 	NOT NULL,
	name 		VARCHAR(10) NOT NULL,
	birthYear 	INT 		NOT NULL,
CONSTRAINT PRIMARY KEY PK_userTBL_userID(userID)
);

SHOW TABLES; -- 테이블 목록 보기

DESC usertbl; -- 테이블의 구조 보기

DROP TABLE IF EXISTS prodTbl;
CREATE TABLE prodTbl (
	prodCode 	CHAR(3) 	NOT NULL,
	prodID 		CHAR(4) 	NOT NULL,
	prodDate 	DATETIME 	NOT NULL,
	prodCur 	CHAR(10) 	NULL,
CONSTRAINT PK_prodTbl_proCode_prodID
PRIMARY KEY (prodCode, prodID)
);

USE sqldb;

CREATE VIEW v_userbuytbl
AS
SELECT U.userid, U.name, B.prodName, U.addr, 
	CONCAT(U.mobile1, U.mobile2) AS '연락처'
FROM usertbl U
	INNER JOIN buytbl B
	ON U.userid = B.userid;

SELECT * FROM v_userbuytbl WHERE name = '김범수';
