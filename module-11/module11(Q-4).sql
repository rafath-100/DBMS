use module11;

CREATE TABLE Orders(
    OrdNo CHAR(2),
    ItemNo CHAR(2) NOT NULL,
    QtvOrd INT NOT NULL,
    CustNo CHAR(2) NOT NULL,
    CustBal DECIMAL(10, 2) NOT NULL,
    CustDisc DECIMAL(2, 2),
    ItemPrice INT NOT NULL,
    OrdDate DATE NOT NULL,
    
    CONSTRAINT PK_OrdNo PRIMARY KEY(OrdNo)
);

Insert into Orders values ('O1', 'I1',  '10',   'C1',   '100',  '0.10', '10', '2018-01-15');
Insert into Orders values('O1',	'I2',	'10',	'C1',	'100',	'0.10',	'20', '2018-01-15');
Insert into Orders values('O2',	'I3',	'5'	,   'C2',	'200',  '0.05', '30',	'2018-01-16');
Insert into Orders values('O2',	'I4',	'10'	,'C2',	'200',  '0.05',	'40',	'2018-01-16');
Insert into Orders values('O3',	'I1',	'10',	'C1',	'100',	'0.10',	'10', '2018-01-17');

select * from Orders;

-- For any Functional Depedency(F.D) 
  -- X -> Y  if and only if X1.row = X2.row and Y1.row = Y2.row where X1,Y1 and X2,Y2 are two columns which X and Y as attribute names

-- Functional Dependency for OrdNo          Rows which does'nt satisfy FD

-- OrdNo -> ItemNo                             (1, 2), (3, 4)
-- OrdNo -> QtyOrd                             (3, 4)
-- OrdNo -> CustNo                             None
-- OrdNo -> CustBal                            None
-- OrdNo -> CustDisc                           None
-- OrdNo -> ItemPrice                          (1, 2), (3, 4)
-- OrdNo -> OrdDate                            None