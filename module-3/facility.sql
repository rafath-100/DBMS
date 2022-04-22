CREATE TABLE Facility (
   facNo CHAR(5),
   facName VARCHAR(30) NOT NULL,
   
   CONSTRAINT PK_FACNO PRIMARY KEY (facNo)
);

INSERT INTO Facility VALUES ('F100', 'Football stadium');
INSERT INTO Facility VALUES ('F101', 'Basketball arena');
INSERT INTO Facility VALUES ('F102', 'Baseball field');
INSERT INTO Facility VALUES ('F103', 'Recreation room');

select * from Facility;
