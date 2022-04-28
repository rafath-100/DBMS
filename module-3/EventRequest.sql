SELECT * FROM rafath.eventrequest;

CREATE TABLE IF NOT EXISTS EventRequest (
  evntNo  CHAR(5) NOT NULL,
  dateHeld  DATE  NOT NULL,
  dateReq  DATE  NOT NULL,
  custNo  CHAR(5) NOT NULL,
  facNo   CHAR(5) NOT NULL,
  dateAuth DATE,
  status  CHAR(20) NOT NULL,
  estCost DECIMAL(8, 2) NOT NULL,
  estAudience INTEGER NOT NULL,
  budNo CHAR(30),
  
  CONSTRAINT EventRequestPK PRIMARY KEY (evntNo),
  CONSTRAINT FK_FACNO_REQUEST FOREIGN KEY (facNo) REFERENCES Facility (facNo),
  CONSTRAINT FK_CUSTNO_REQUEST FOREIGN KEY (custNo) REFERENCES Customer (custNo),
  CHECK (status IN('Pending','Denied','Approved') AND estaudience>0)
);

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E100', '2013-10-25', '2013-06-06', 'C100', 'F100', '2013-06-08', 'Approved', '5000.00', '80000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E101', '2013-10-26', '2013-07-28', 'C100', 'F100', NULL, 'Pending', '5000.00', '80000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E102', '2013-09-14', '2013-07-28', 'C100', 'F100', '2013-07-31', 'Approved', '5000.00', '80000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E103', '2013-09-21', '2013-07-28', 'C100', 'F100', '2013-08-01', 'Approved', '5000.00', '80000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E104', '2013-12-03', '2013-07-28', 'C101', 'F101', '2013-07-31', 'Approved', '2000.00', '12000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E105', '2013-12-05', '2013-07-28', 'C101', 'F101', '2013-08-01', 'Approved', '2000.00', '10000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E106', '2013-12-12', '2013-07-28', 'C101', 'F101', '2013-07-31', 'Approved', '2000.00', '10000', 'B1000');

INSERT INTO EventRequest (evntNo, dateHeld, dateReq, custNo, facNo, dateAuth, status, estCost, estAudience, budNo)
VALUES ('E107', '2013-11-23', '2013-07-28', 'C105', 'F100', '2013-07-31', 'Denied', '10000.00', '5000', NULL);

select * from EventRequest;
