 CREATE TABLE Customer (
 	custid VARCHAR(255),
 	custemail VARCHAR(255),
 	firstname VARCHAR(255),
 	lastname VARCHAR(255)
     );
     
 CREATE TABLE Salesperson (		 
 	empid VARCHAR(255),
	empemail VARCHAR(255),
 	firstname VARCHAR(255),
 	lastname VARCHAR(255),
    datehired DATE
);

 CREATE TABLE Car (
 	vin VARCHAR(255),
 	make VARCHAR(255),
 	model VARCHAR(255),
 	listprice DECIMAL(10,2),
 	dateofmanufacture DATE,
    color VARCHAR(255)
);

CREATE TABLE Sale (
    invoiceno VARCHAR(255),
	saledate DATE,
	saleprice DECIMAL(10,2),
   	custid VARCHAR(255),
    empid VARCHAR(255)
);


-- ALTER TABLE CarSurvey ADD CONSTRAINT CarSurvey_surveyNumber_pk PRIMARY KEY (surveyNumber);
-- ALTER TABLE CarSurvey ADD CONSTRAINT CarSurvey_invoiceNo_CarSale_invoiceNumber_fk FOREIGN KEY (invoiceNo) REFERENCES CarSale (invoiceNo);