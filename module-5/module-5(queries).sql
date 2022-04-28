USE rafath;
USE databasefirst;

-- 1. List the event number, date held, customer number, customer name, facility number, and facility name of 2018 events placed by Boulder customers.

SELECT EventNo, DateHeld, Customer.CustNo, CustName,
               Facility.FacNo, FacName
  FROM EventRequest, databasefirst.Customer, databasefirst.Facility
  WHERE City = 'Boulder' 
        AND DateHeld BETWEEN '2018-01-01' AND '2018-12-31'
        AND EventRequest.CustNo = Customer.CustNo 
        AND EventRequest.FacNo = Facility.FacNo;


-- 2. List the customer number, customer name, event number, date held, facility number, facility name, and estimated audience cost per person (EstCost / EstAudience) for events held on 2018, in which the estimated cost per person is less than $0.2

SELECT Customer.CustNo, CustName, EventNo, 
               DateHeld, Facility.FacNo, FacName, EstCost/EstAudience AS AudCost
  FROM EventRequest, databasefirst.Customer, databasefirst.Facility
  WHERE DateHeld BETWEEN '2018-01-01' AND '2018-12-31' 
        AND EstCost/EstAudience < 0.2
        AND EventRequest.CustNo = Customer.CustNo 
        AND EventRequest.FacNo = Facility.FacNo;


-- 3. List the customer number, customer name, and total estimated costs for Approved events. The total amount of events is the sum of the estimated cost for each event. Group the results by customer number and customer name.

SELECT EventRequest.custNo, custName,
SUM(estCost) AS totalEstimatedCost
FROM rafath.EventRequest, databasefirst.Customer
WHERE 
(EventRequest.custNo = Customer.custNo)
AND status="Approved"
GROUP BY EventRequest.custNo, custName;

-- 4. Insert yourself as a new row in the Customer table.

INSERT INTO databasefirst.Customer (custNo, custName, Address, internal, contact, phone, city, state, zip) VALUES
 ('C9999999', 'Tim Gasser', '2345 Chuff Avenue', 'N', 'Bill Baseball', '8476543939', 'Austin', 'TX', '12345');
 
SELECT * FROM databasefirst.Customer;


-- 5. Increase the rate by 10 percent of resource names equal to nurse.

SET SQL_SAFE_UPDATES = 0;
UPDATE ResourceTbl
SET rate = rate * 1.1
WHERE 
resName = "nurse";
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM ResourceTbl;

-- 6. Delete the new row added to the Customer table.

DELETE FROM databasefirst.Customer
WHERE CustNo = 'C9999999';

SELECT * FROM databasefirst.Customer;

