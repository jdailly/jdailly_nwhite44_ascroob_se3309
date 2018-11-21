USE CellProvider;

CREATE TABLE CellProviderCompany
(
	serviceProviderID INT unsigned NOT NULL,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (serviceProviderID));
    
CREATE TABLE  Customer (
	idNo INT unsigned NOT NULL,
    clientName VARCHAR(50) NOT NULL,
    clientAddress VARCHAR(50) NOT NULL,
    clientEmail VARCHAR(50) NOT NULL,
    birthDate DATE NOT NULL,
    dateJoined DATE NOT NULL,
    serviceProviderID INT unsigned NOT NULL,
    PRIMARY KEY (idNo),
    FOREIGN KEY (serviceProviderID) REFERENCES CellProviderCompany (serviceProviderID) ON UPDATE CASCADE);
    
CREATE TABLE Payment(
	methodID bigint auto_increment primary key,
	idNo INT unsigned NOT NULL,
    cardNo VARCHAR(12) NOT NULL,
    expiryDate DATE NOT NULL,
    paid BOOLEAN NOT NULL,
	UNIQUE KEY user_method(idNo, cardNo),
    FOREIGN KEY (idNo) REFERENCES Customer (idNo) ON UPDATE CASCADE);
    
CREATE TABLE Transactions (
	transNo INT unsigned NOT NULL AUTO_INCREMENT,
    transDate DATE,
    transAmount FLOAT unsigned,
    methodID bigint NOT NULL,
    PRIMARY KEY (transNo),
    FOREIGN KEY (methodID) REFERENCES Payment (methodID) ON UPDATE CASCADE);
    
CREATE TABLE TextPlan (
    textAmount INT unsigned,
    textFee FLOAT unsigned,
    PRIMARY KEY (textAmount)
    );
    
CREATE TABLE MinPlan (
    minAmount INT unsigned,
    minFee FLOAT unsigned,
    PRIMARY KEY (minAmount));
    

CREATE TABLE DataPlan (
    dataAmount INT unsigned,
    dataFee FLOAT unsigned,
    PRIMARY KEY (dataAmount));
    
CREATE TABLE Plan (
	planID INT unsigned NOT NULL,
    textAmount INT unsigned NOT NULL,
    minAmount INT unsigned NOT NULL,
    dataAmount INT unsigned NOT NULL,
    PRIMARY KEY (planID),
    FOREIGN KEY (textAmount) REFERENCES TextPlan (textAmount),
    FOREIGN KEY (minAmount) REFERENCES MinPlan (minAmount),
    FOREIGN KEY (dataAmount) REFERENCES DataPlan (dataAmount));
    
    
CREATE TABLE Contract (
	contractID INT unsigned NOT NULL AUTO_INCREMENT,
    idNo INT unsigned NOT NULL,
    contractLength INT unsigned,
    PRIMARY KEY (contractID),
    FOREIGN KEY (idNo) REFERENCES Customer(idNo) ON UPDATE CASCADE);
    
CREATE TABLE Statement (
	contractID INT unsigned NOT NULL,
    planID INT unsigned,
    startDate DATE,
    endDate DATE,
    monthlyFee FLOAT,
    overChargeFee INT unsigned,
    PRIMARY KEY (planID),
    FOREIGN KEY (contractID) REFERENCES Contract (contractID) ON UPDATE CASCADE,
    FOREIGN KEY (planID) REFERENCES Plan (planID) ON UPDATE CASCADE);
    
CREATE TABLE PhoneEvent (
	eventNo INT unsigned NOT NULL AUTO_INCREMENT,
    idNo INT unsigned,
    eventDate DATE,
    PRIMARY KEY (eventNo),
    FOREIGN KEY (idNo) REFERENCES Customer(idNo) ON UPDATE CASCADE);
    
CREATE TABLE TextEvent (
	eventNo INT unsigned,
    numberTexts INT unsigned,
    PRIMARY KEY (eventNo),
    FOREIGN KEY (eventNo) REFERENCES PhoneEvent (eventNo) ON UPDATE CASCADE);
    
 CREATE TABLE MinEvent (
	eventNo INT unsigned,
    numberMin INT unsigned,
    PRIMARY KEY (eventNo),
    FOREIGN KEY (eventNo) REFERENCES PhoneEvent (eventNo) ON UPDATE CASCADE);
    
CREATE TABLE DataEvent (
	eventNo INT unsigned,
    usageData INT unsigned,
    PRIMARY KEY (eventNo),
    FOREIGN KEY (eventNo) REFERENCES PhoneEvent (eventNo) ON UPDATE CASCADE);
 

CREATE TABLE Phone (
	phoneNo VARCHAR(12) NOT NULL,
    phoneID VARCHAR(12) NOT NULL,
    currTxt INT unsigned NOT NULL,
    currMin INT unsigned NOT NULL,
    currData  INT unsigned NOT NULL,
    inCntry INT unsigned NOT NULL,
    daysOut INT unsigned NOT NULL,
    idNo INT unsigned NOT NULL,
    PRIMARY KEY (phoneID),
    FOREIGN KEY (idNo) REFERENCES Contract (idNo) ON UPDATE CASCADE);
    

DROP TABLE DataEvent;
DROP TABLE MinEvent;
DROP TABLE TextEvent;
DROP TABLE PhoneEvent;
DROP TABLE Statement;
DROP TABLE Plan;
DROP TABLE DataPlan;
DROP TABLE MinPlan;
DROP TABLE TextPlan;
DROP TABLE Transactions;
DROP TABLE Payment;
DROP TABLE Phone;
DROP TABLE Contract;
DROP TABLE Customer;
DROP TABLE CellProviderCompany;