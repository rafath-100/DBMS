use module11;

-- Given
   -- Student (StdNo(P.K), StdName, StdEmail, StdAddress, StdCity, StdState, StdZip )
   -- Lender(LenderNo(P.K), LenderName)
   -- Institution(InstNo(P.K), InstName, InstMascot)
   
   --  In Student Table, StdEmail is unique 
   --  In Lender Table, LenderName is unique
   --  In Institution Table, InstName is unique

-- In the Student table, StdNo and StdEmail, both are unique which violates BCNF Property
-- So either make StdEmail as primary key or StdNo

-- In Lender table LenderName and LenderNo both are unique

-- In Institution table, InstName, and InstNo both are unique
