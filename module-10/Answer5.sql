-- Answer: 5

-- Account(AcctID, AcctName, Balance)
   CONSTRAINT PK_AcctID PRIMARY KEY(AcctID),
   CONSTRAINT FK_AcctID FOREIGN KEY(DecomposedAcctID) REFERENCES Accounts(AcctID)