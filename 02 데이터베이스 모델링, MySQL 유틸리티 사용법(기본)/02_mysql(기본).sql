
-- productTBL의 데이터를 출력하세요.
SELECT * FROM shopdb.producttbl;

-- memberTBL의 데이터를 출력하세요. 
-- 단, memberName과 memberAddress 만 출력함
SELECT memberName, memberAddress FROM shopdb.membertbl;

-- memberTBL의 데이터 중 이름이 '지운이'인 데이터만 출력하세요
SELECT * FROM shopdb.membertbl WHERE memberName = '지운이' ;