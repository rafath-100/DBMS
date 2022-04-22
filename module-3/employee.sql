CREATE TABLE RESOURCETBL (
  resNo   CHAR(5)       NOT NULL,
  resName VARCHAR(30)   NOT NULL,
  rate    DECIMAL(8, 2) NOT NULL,
  CONSTRAINT PK_RESNO PRIMARY KEY (resNo)
);

Insert into RESOURCETBL values ('R100','attendant',10);
Insert into RESOURCETBL values ('R101','police',15);
Insert into RESOURCETBL values ('R102','usher',10);
Insert into RESOURCETBL values ('R103','nurse',20);
Insert into RESOURCETBL values ('R104','janitor',15);
Insert into RESOURCETBL values ('R105','food service',10);
