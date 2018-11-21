UPDATE	Statement s
	INNER JOIN Plan p ON s.planID = p.planID
	INNER JOIN TextPlan tp ON p.textAmount = tp.textAmount
	INNER JOIN MinPlan mp ON p.minAmount = mp.minAmount
	INNER JOIN DataPlan dp ON p.dataAmount = dp.dataAmount
	SET		s.monthlyFee = (tp.textFee + mp.minFee + dp.dataFee)
	WHERE	s.monthlyFee = '0';
    
UPDATE Phone p
	INNER JOIN PhoneEvent pe ON pe.idNo = p.idNo
	INNER JOIN TextEvent te ON te.eventNo = pe.eventNo
	SET p.currText = SUM (te.numberTexts);
	#WHERE p.currText = 0;
    
    
UPDATE Phone p
	INNER JOIN PhoneEvent pe ON pe.idNo = p.idNo
	INNER JOIN MinEvent me ON me.eventNo = pe.eventNo
	SET p.currMin = SUM (me.numberMin);
	#WHERE p.currMin = 0;
    
UPDATE Phone p
	INNER JOIN PhoneEvent pe ON pe.idNo = p.idNo
	INNER JOIN DataEvent de ON de.eventNo = pe.eventNo
	SET p.currData = SUM (de.amountData);