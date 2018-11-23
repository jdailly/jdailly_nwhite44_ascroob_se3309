INSERT INTO CellProviderCompany VALUES ('1000', 'jdailly', 'se3309');


INSERT INTO Customer VALUES ('00001', 'Nick White', '123 Main St', 'nwhite44@uwo.ca', '1997-01-01', '2018-01-01', 
	(SELECT (serviceProviderID) 
    FROM CellProviderCompany
    WHERE username = 'jdailly'));
    
INSERT INTO Contract VALUES ('10001', 
	(SELECT (idNo)
    FROM Customer
    WHERE clientName = 'Nick White'), '3');
    
INSERT INTO Payment VALUES ('1',
	(SELECT (idNo)
    FROM Contract
    WHERE
		(SELECT (idNo)
        FROM Customer
        WHERE clientEmail = 'nwhite44@uwo.ca')), '12345', '2020-01-01', '0');
     
SELECT * FROM cellprovidercompany;
SELECT * FROM Customer;
SELECT * FROM Payment;
     
     
DELETE FROM Payment;
DELETE FROM Contract;
Delete FROM Customer;
DELETE FROM CellProviderCompany;
