SELECT * FROM CellProviderCompany;
SELECT * FROM Customer;
SELECT * FROM Contract;
SELECT * FROM Phone;
SELECT * FROM Payment;
SELECT * FROM Transactions;
SELECT * FROM TextPlan;
SELECT * FROM MinPlan;
SELECT * FROM DataPlan;
SELECT * FROM Plan;
SELECT * FROM Statement;
SELECT * FROM PhoneEvent;
SELECT * FROM TextEvent;
SELECT * FROM MinEvent;
SELECT * FROM DataEvent;

#Query 1
#Get the name and email of everyone who hasnt paid their current statement
SELECT cu.idNo, clientName, clientEmail
FROM Customer cu, contract co, Payment p
WHERE cu.idNo = co.idNo
AND co.idNo = p.idNo
AND p.paid = 0;

#Query 2
#Get everyone's name and email from a specific provider who has joined before a specific date
SELECT idNo, clientName, clientEmail, dateJoined
FROM Customer 
WHERE dateJoined > 2015-01-01 
AND serviceProviderID = 1;

#Query 3
#Get the name and phone number of everyone currently out of country and get how many days they have been out
SELECT c.idNo, clientName, phoneNo, daysOut
FROM Customer c
INNER JOIN Phone p 
	ON c.idNo = p.idNo
WHERE inCntry = 0;

#Query 4
#Get everyone who has joined in the last month with a certain provider and return their data usage
SELECT c.idNo, clientName, currData
FROM Customer c, Phone p
WHERE c.idNo = p.idNo
AND dateJoined > 2018-11-20
AND serviceProviderID = 1
GROUP BY c.idNo;

#Query 5
#Return customers and emails where curr data > data amount
SELECT c.idNo, clientName, clientEmail, ph.currData
FROM Customer c, Phone ph, Plan pl, Statement s, Contract co
WHERE ph.idNo = c.idNo
AND c.idNo = co.idNo
AND co.contractID = s.contractID
AND s.planID = pl.planID
AND ph.currData > pl.dataAmount;

#Query 6
#Return customers and emails that have less than 2 months left on their contract
SELECT cu.idNo, clientName, clientEmail, contractLength
FROM Customer cu
INNER Join Contract co ON cu.idNo = co.idNo
WHERE co.contractLength < 2