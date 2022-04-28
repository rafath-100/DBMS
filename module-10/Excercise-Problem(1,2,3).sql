-- 1)
Customer(CustNo, CustFirstName, CustLastName, CustCity, CustState, CustZip, CustBal)

Employee(EmpNo, supempno, EmpFirstName, EmpLastName, EmpPhone, EmpEmail, EmpDeptName, EmpCommRate)
		FOREIGN KEY(supempno) REFERENCES Employee

Product(ProdNo, ProdName, ProdQOH, ProdPrice, ProdNextShipDate)

Order(OrdNo, CustNo, EmpNo, OrdDate, OrdName, OrdCity, OrdZip)
		FOREIGN KEY(custno) REFERENCES customer
		FOREIGN KEY(empno) REFERENCES employee
		CustNo NOT NULL

	Contains(OrdNo, ProdNo, Qty)
		FOREIGN KEY(ordno) REFERENCES order
 		FOREIGN KEY(prodno) REFERENCES product

-- Conversion rules
-- 	Use the entity type rule to convert each entity type
-- 	Use the 1-M relationship rule for all relationships except the contains relationship
-- 	Use the M-N rule to convert the contains relationship

-- 2)
Customer(CustNo, CustFirstName, CustLastName, CustCity, CustState, CustZip, CustBal)

Employee(EmpNo, supempno, EmpFirstName, EmpLastName, EmpPhone, EmpEmail, EmpDeptName, EmpCommRate)
		FOREIGN KEY(supempno) REFERENCES Employee

Product(ProdNo, ProdName, ProdQOH, ProdPrice, ProdNextShipDate)

Order(OrdNo, CustNo, EmpNo, OrdDate, OrdName, OrdCity, OrdZip)
		FOREIGN KEY(custno) REFERENCES customer
		FOREIGN KEY(empno) REFERENCES employee
		CustNo NOT NULL

	OrderLine(OrdNo, ProdNo, Qty)
		FOREIGN KEY(ordno) REFERENCES order
 		FOREIGN KEY(prodno) REFERENCES product

-- Conversion rules
-- 	Use the entity type rule to convert each entity type
-- 	Use the 1-M relationship rule for all relationships
-- 	Use the identification dependency rule to add two components (OrdNo and ProdNo) to the primary key of the OrderLine table

-- 3)
Building(BldgId, BldgName, BldgLocation)

Room(BldgId, RoomNo, RoomCapacity)
		FOREIGN KEY(BldgId) REFERENCES Building

-- Conversion rules
-- 	Use the entity type rule to convert the Building and Room entity types.
-- 	Use the 1-M relationship rule to convert the Contains relationship into the BldgId FK in the Room table.
-- 	Use the identification dependency rule to make BldgId a component of the PK of Room. The PK of the Room table is a combination of BldgId and RoomNo.
-- 	In the final conversion result, a not null constraint is not needed for Room.BldgId because this column is part of the primary key of Room.


