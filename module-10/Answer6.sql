-- Answer: 6

-- Owner(OwnID, OwnName, OwnPhone)
   CONSTRAINT PK_OwnID PRIMARY KEY(OwnID)

-- Property(PropID, BldgName, UnitNo, Bdms)
   CONSTRAINT PK_PropID PRIMARY KEY(PropID)

-- Shares(OwnID, PropID, StartWeek, EndWeek)
   CONSTRAINT FK_OwnID FOREIGN KEY(OwnID) REFERENCES Owners(OwnID),
   CONSTRAINT FK_PropID FOREIGN KEY(PropID) REFERENCES Property(PropID)