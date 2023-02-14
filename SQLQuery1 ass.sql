create database day1
use day1
create table customer_master(CUSTOMER_NUMBER VARCHAR(10) PRIMARY KEY,FIRSTNAME VARCHAR(20)NOT NULL,
middlename VARCHAR(20),lastname VARCHAR(20) NOT NULL,CUSTOMER_CITY VARCHAR(20) 
NOT NULL,CUSTOMER_CONTACT_NO VARCHAR(10) NOT NULL,occupation VARCHAR(20) NOT NULL,CUSTOMER_DATE_OF_BIRTH DATE NOT NULL)
INSERT INTO customer_master VALUES('c001','KONDRA','JANARDHANARAO','RAO','DELHI','9392865508','STUDENT','2002-06-11')
insert into customer_master values('c002','SATLA','RAVI','MAMA','DELHI','9957140709','SERVICE','2000-01-01')
insert into customer_master values('c003','YALAMANCHI',NULL,'VIJAY','DELHI','9573710559','STUDENT','2003-02-25')
insert into customer_master values('c004','PAWAN',NULL,'KALYAN','ANDHRAPRADESH','6302377248','SERVICE','2000-06-29')
insert into customer_master values('c005','RAM',NULL,'KRISHNA','DELHI','9543198345','STUDENT','1976-12-06')
insert into customer_master values('c006','CHITRESH',NULL,'SHARMA','MUMBAI','843198345','STUDENT','1992-12-06')
insert into customer_master values('c007','RAM','CHANDRA','SHARMA','MUMBAI','9543198345','STUDENT','1991-12-06')
insert into customer_master values('c008','NISHA',NULL,'DAMLE','MUMBAI','9543198345','SERVICE','1975-12-06')
insert into customer_master values('c009','ABHISHEK',NULL,'DUTTA','KOLKATA','9843198345','SERVICE','1973-12-06')
insert into customer_master values('c010','VIRAT',NULL,'KOHLI','CHENNAI','8543198345','SERVICE','1976-07-06')
SELECT * FROM customer_master
drop table customer_master
SELECT CUSTOMER_CITY ,COUNT(CUSTOMER_NUMBER) FROM customer_master GROUP BY CUSTOMER_CITY
SELECT DISTINCT CUSTOMER_CITY FROM customer_master
SELECT occupation,COUNT(CUSTOMER_NUMBER) FROM customer_master GROUP BY occupation
SELECT *FROM customer_master ORDER BY(FIRSTNAME)
SELECT *FROM customer_master ORDER BY(occupation) DESC,FIRSTNAME
SELECT CUSTOMER_NUMBER,FIRSTNAME,lastname,CUSTOMER_CITY,CUSTOMER_CONTACT_NO,CUSTOMER_DATE_OF_BIRTH from customer_master where middlename is null
