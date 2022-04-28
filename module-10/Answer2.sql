-- Answer: 2

-- Student(StdNo-PK, StdName, StdAddress, StdCity, StdState, StdZip, StdEmail)
   CONSTRAINT PK_StdNo PRIMARY KEY(StdNo)

-- Institution(InstID, InstName, InstMascot)
   CONSTRAINT PK_InstID PRIMARY KEY(InstID)

-- Lender(LenderNo, LendName)
   CONSTRAINT PK_LenderNo PRIMARY KEY(LenderNo)

-- Loan(LoanNo, StdNo, InstID, LenderNo, ProcDate, DisbMethod, DisbBank, DateAuth, NoteValue, Subsidized, Rate)
   CONSTRAINT PK_LoanNo PRIMARY KEY(LoanNo),
   CONSTRAINT FK_StdNo FOREIGN KEY(StdNo) REFERENCES Student(StdNo),
   CONSTRAINT FK_InstID FOREIGN KEY(InstID) REFERENCES Institution(InstID)

-- DisburseLine(LoanNo, DateSent, Amount, OrigFee, GuarFee)
    CONSTRAINT PK_DateSent PRIMARY KEY(DateSent),
    CONSTRAINT FK_LoanNo FOREIGN KEY(LoanNo) REFERENCES Loan(LoanNo)

