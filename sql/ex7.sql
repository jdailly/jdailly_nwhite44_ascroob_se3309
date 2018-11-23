#View 1
#Service Providers can only view information for their customers
CREATE VIEW Provider1Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 1; 

CREATE VIEW Provider2Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 2;

CREATE VIEW Provider3Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 3;

CREATE VIEW Provider4Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 4;

CREATE VIEW Provider5Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 5;

CREATE VIEW Provider6Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 6;

CREATE VIEW Provider7Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 7;

SELECT * FROM Provider1Customer;
DROP VIEW Provider1Customer;

#View 2
#Return Customer & contract information for each client
CREATE VIEW CustomerViewContract
As Select cu.idNo, cu.clientName, co.contractID, co.contractLength, cp.serviceProviderID
From Contract co, Customer cu, CellProviderCompany cp
WHERE cu.idNo = co.idNo
AND cp.serviceProviderID = cu.serviceProviderID
GROUP BY cu.idNo;

SELECT * FROM CustomerViewContract;

DROP VIEW CustomerViewContract;

#View 3
#Return Customer monthly statement
CREATE VIEW CustomerMonthlyStatement
AS SELECT c.idNo, s.startDate, s.endDate, s.monthlyFee, s.overChargeFee, t.transAmount
FROM Customer c, Statement s, Transactions t, Contract co, Payment p
WHERE c.idNo = co.idNo
AND co.contractID = s.contractID
AND c.idNo = p.idNo
AND p.methodID= t.methodID
GROUP BY c.idNo;

DROP VIEW CustomerMonthlyStatement;
SELECT * FROM CustomerMonthlyStatement;

#Test views with queries
SELECT p1c.idNo, clientName, clientEmail, contractLength
FROM Provider1Customer p1c
INNER Join Contract co ON p1c.idNo = co.idNo
WHERE co.contractLength < 2
GROUP BY p1c.idNo;

#Trying to modify a view
INSERT INTO Provider1Customer
VALUES (99999, 'Test Name', '123 Main St, London', 'modify@example.com', '1990-01-03', '2018-03-04', 2);

SELECT * FROM Provider1Customer WHERE idNo = 99999;

SELECT * FROM Customer WHERE idNo = 99999;

DELETE FROM Customer WHERE idNo = 99999;

#Modifying a view connected to multiple relations
INSERT INTO CustomerMonthlyStatement VALUES (99999, '2018-01-01', '2018-02-01', 15, 0, 15);