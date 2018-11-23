CREATE VIEW Provider1Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 1; 

CREATE VIEW Provider2Customer 
AS SELECT * 
FROM Customer
WHERE ServiceProviderID = 2;


SELECT * FROM Provider2Customer;

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


CREATE VIEW CustomerViewContract
As Select *
From Contract
WHERE idNo = 10034;

SELECT * FROM CustomerViewContract;

DROP VIEW CustomerViewContract;


CREATE VIEW CustomerPayment
AS SELECT * 
FROM Payment
WHERE idNo = 10034;

SELECT * FROM CustomerPayment;