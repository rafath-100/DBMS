use databasefirst;
create table Customer
(CustNo varchar(20) NOT NULL, 
CustName varchar(20) NOT NULL, 
Address varchar(20) NOT NULL, 
Internal char(1) NOT NULL, 
Contact varchar(30) NOT NULL, 
Phone varchar(20) NOT NULL, 
City varchar(20) NOT NULL, 
State varchar(20) NOT NULL, 
Zip varchar(20) NOT NULL,
CONSTRAINT PK_CUSTOMER PRIMARY KEY (CustNo) );-- 
DESC customer;-- 

INSERT INTO Customer (custNo, custName, custAddress, internal, contact, phoneNo, city, state, zip) VALUES
  ('C100', 'Football', 'Box 352200', 'Y', 'Mary Manager', '6857100', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, custAddress, internal, contact, phoneNo, city, state, zip) VALUES
  ('C101', 'Men\'s Basketball', 'Box 352400', 'Y', 'Sally Supervisor', '5431700', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, custAddress, internal, contact, phoneNo, city, state, zip) VALUES
  ('C103', 'Baseball', 'Box 352020', 'Y', 'Bill Baseball', '5431234', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, custAddress, internal, contact, phoneNo, city, state, zip) VALUES
  ('C104', 'Women\'s Softball', 'Box 351200', 'Y', 'Sue Softball', '5434321', 'Boulder', 'CO', '80309');

INSERT INTO Customer (custNo, custName, custAddress, internal, contact, phoneNo, city, state, zip) VALUES
  ('C105', 'High School Football', '123 AnyStreet', 'N', 'Coach Bob', '4441234', 'Louisville', 'CO', '80027');



select * from customer;
