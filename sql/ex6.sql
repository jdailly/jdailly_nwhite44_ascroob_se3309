#set monthly fee in statement based on plan
UPDATE	Statement s
	INNER JOIN Plan p ON s.planID = p.planID
	INNER JOIN TextPlan tp ON p.textAmount = tp.textAmount
	INNER JOIN MinPlan mp ON p.minAmount = mp.minAmount
	INNER JOIN DataPlan dp ON p.dataAmount = dp.dataAmount
	SET		s.monthlyFee = (tp.textFee + mp.minFee + dp.dataFee)
	WHERE	s.monthlyFee = '0';
    
    
    
SELECT p.phoneID, SUM(me.numberMin)
FROM Phone p, PhoneEvent pe, MinEvent me 
WHERE p.idNo = pe.idNo
AND me.eventNo = pe.eventNo
GROUP BY p.phoneID;

SELECT * FROM Statement;    

#set current number of texts for phone based on phone events
UPDATE Phone p
	SET p.currTxt = (SELECT sum(te.numberTexts)
		FROM TextEvent te, PhoneEvent pe
        WHERE te.eventNo = pe.eventNo AND pe.idNo = p.idNo
        GROUP BY phoneID);
        
SELECT * FROM Phone;

 #set current minutes for phone based on phone events 
UPDATE Phone ph
	SET ph.currMin = (
		SELECT SUM(me.numberMin)
		FROM PhoneEvent pe, MinEvent me 
		WHERE ph.idNo = pe.idNo AND me.eventNo = pe.eventNo
		GROUP BY ph.phoneID);
        
#set current data for phone based on phone events 
UPDATE Phone ph
	SET ph.currData = (
		SELECT SUM(de.usageData)
		FROM PhoneEvent pe, DataEvent de 
		WHERE ph.idNo = pe.idNo AND de.eventNo = pe.eventNo
		GROUP BY ph.phoneID);
        
#overcharge was set to $20 when original data was generated
#set all to $0 so that overcharge can be calculated based on phone usage
UPDATE Statement s
SET s.overChargeFee = 0;

#if a customer has gone over their allowed usage of texts/min/data for the month,
#add a $20 over charge fee to their statement
UPDATE Statement s
	INNER JOIN Contract c ON c.contractID = s.contractID
    INNER JOIN Phone p ON p.idNo = c.idNo  
	INNER JOIN Plan pl ON pl.planID = s.planID
	SET s.overChargeFee = 20
	WHERE p.currTxt > pl.textAmount
	OR p.currMin > pl.minAmount
	OR p.currData > pl.dataAmount;

SELECT * FROM Statement;
    
UPDATE Transactions t
	INNER JOIN Payment p ON t.methodID = p.methodID
	INNER JOIN Contract c ON p.idNo = c.idNo
	INNER JOIN Statement s ON s.contractID = c.contractID
	SET t.transAmount = (s.monthlyFee + s.overChargeFee);
    
SELECT * FROM Transactions;