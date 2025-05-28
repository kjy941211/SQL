-- 문제1
SHOW DATABASES;

USE employees;

SHOW TABLES;

DESCRIBE employees;

-- 문제2
select * from employees.titles;

select first_name from employees;

select first_name, last_name, gender from employees;

-- 문제3
select first_name as 이름, gender as 성별, hire_date '회사 입사일' from employees;

-- 문제4

-- 문제5
use sqldb;

select * from usertbl where name = '김경호';

select * from usertbl
where birthyear >= 1970 and height >= 182;

-- 문제6
select * from usertbl
where height between 180 and 183;

select * from usertbl
where addr in ('경남', '전남', '경북');

select * from usertbl
where name like '김%';

-- 문제7
select name, height from usertbl
where height > (select height from usertbl where name = '김경호');

-- 문제8
select * from usertbl order by mdate asc;

select * from usertbl order by mdate desc;

select * from usertbl order by height desc, name desc;

-- 문제9
select distinct addr from usertbl;

-- 문제10
use world;

select * from city 
where countrycode='KOR'
order by population desc;

select countrycode, population from city
order by countrycode asc, population desc;

select count(*) from city
where countrycode='KOR';

select * from city
where countrycode in ('KOR', 'CHN', 'JPN');

select * from city
where countrycode = 'KOR' and population >= 1000000;

select * from city
where countrycode = 'KOR'
order by population desc
limit 10;

select * from city
where countrycode = 'KOR'
and population between 1000000 and 5000000;