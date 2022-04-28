-- Answer: 1

-- Student(StdNo-PK, StdName, StdAddress, StdCity, StdState, StdZip, StdEmail)
	CONSTRAINT PK_StdNo PRIMARY KEY(StdNo)

-- Loan(LoanNo, ProcDate, DisbMethod, DisbBank, DateAuth, NoteValue, Subsidized, Rate)
	CONSTRAINT PK_LoanNo PRIMARY KEY(LoanNo)
    
-- Lender(LenderNo, LendName)
	CONSTRAINT PK_LenderNo PRIMARY KEY(LenderNo)
    
-- Institution(InstID, InstName, InstMascot)
	CONSTRAINT PK_InstID PRIMARY KEY(InstID)
    
-- DisburseLine(DateSent, Amount, OrigFee, GuarFee)
	CONSTRAINT PK_DateSent PRIMARY KEY(DateSent)

