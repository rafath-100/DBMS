create table Location (locNo varchar(10) NOT NULL,
	 	facNo varchar(10) NOT NULL, 
		locName varchar(20) NOT NULL,
		CONSTRAINT PK_LOCNO PRIMARY KEY (locNo),
   		CONSTRAINT FK_FACNO FOREIGN KEY (facNo) REFERENCES Facility (facNo)
);

INSERT INTO Location  VALUES ('L100', 'F100', 'Locker room');
INSERT INTO Location  VALUES ('L101', 'F100', 'Plaza');
INSERT INTO Location  VALUES ('L102', 'F100', 'Vehicle gate');
INSERT INTO Location VALUES ('L103', 'F101', 'Locker room');
INSERT INTO Location VALUES ('L104', 'F100', 'Ticket Booth');
INSERT INTO Location  VALUES ('L105', 'F101', 'Gate');
INSERT INTO Location  VALUES ('L106', 'F100', 'Pedestrian gate');

select * from Location;