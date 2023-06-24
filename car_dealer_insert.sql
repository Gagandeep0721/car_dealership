--inputting Customer info---
INSERT INTO Customer(
 first_name, 
 last_name, 
 email, 
 phone_number, 
 address
 )VALUES(
 	'Sam',
	'Gamgee',
	 'samwise@thegreendragon.com',
	 '888-234-5678',
	 '17 Bagshot Row, kentuky,KY'
 ),(
	'Aragorn',
	'Elessar',
	'theking@minastirith.gov',
	'111-123-4567',
	'1812 The Palace, Indiana,IN'
),(
	'Gandalf',
	'White',
	'gandalf@wizards.org',
	'000-234-5555',
	'1220 The Prancing Pony, Room 11, Newyork,NY'
),(
	'Alisha',
	'smith',
	'anthon@hotrides.com',
	'222-569-8974',
	'1445 casada dr, Louisville,TN');

SELECT*
FROM Customer;
	
--inputting salesperson--
 INSERT INTO Salesperson(
  first_name, 
  last_name,
 phone_number
)VALUES(
	'Elisa',
	'Princess',
	'444-876-5432'
),(
	'Faramir',
	'Steward',
	'111-123-3579'
),(
	'Grina',
	'Lewis',
	'511-223-4964'
),(
	'Mikyala',
	'Wilson',
	'444-333-2245');
SELECT*
FROM Salesperson;

--inputting Cars--
INSERT INTO Cars(
	 make, 
	model, 
	car_year, 
	price, 
	seller_id, 
	customer_id
)VALUES(
'Toyota','Camry',2005, 3000.00, 2, 1
),(
'Ford','Mustang',2021, 40000.00, 3, 4
),(
'Hyundai','Palisades',2023,49000.00, 1, 6
),(
'BMW','x4',2023,54200.00, 5, 7);
SELECT*
FROM Cars;

INSERT INTO Sales_invoice(
    invoice_id, 
	customer_id, 
	purchase_date, 
	amount, 
	seller_id, 
	car_id
)VALUES(
	8,
	5,
	'01/10/2023',
	3500,
	3,
	2
),(
	9,
	4,
	'05/10/2023',
	49000.00,
	2,
	4
),(
    3,
	2,
	'04/15/2023',
	40000.00,
	3,
	3);

SELECT*
FROM Sales_invoice;

INSERT INTO Service_invoice(
	service_id, 
	description, 
	serv_date,
	total_cost, 
	car_id, 
	customer_id
)VALUES(
	2, 
	'Oil change service', 
	'06/20/2023',
	125.87, 
	3, 
	3
),(
	 4, 
	'Re-alignment of the Accord, plus replacing the wheels.', 
	'04/02/2023', 
	3500.17, 
	4, 
	2
),(
	 5, 
	'Replacing batteries, filter change.', 
	'02/02/2023', 
	2533.33, 
	6, 
	1);
SELECT*
FROM Service_invoice;

INSERT INTO Mechanic(
	mechanic_id, 
	first_name, 
	last_name,
	service_id
)VALUES(
	1,
	'Emad',
	'Reza',
	'4'
),(
	5,
	'Emil',
	'Goose',
	'2'
),(
	4,
	'Rob',
	'handymandy',
	'3');
SELECT*
FROM Mechanic;

INSERT INTO Parts(	
	description,
	service_id
)VALUES(
	'Honda Accord wheels x4',
	'2'
),(
	'toyota camry engine parts',
	 '3'
),(
	'adjusting a carburetor & cleaning a fuel injector nozzle',
	'9');

SELECT*
FROM Parts;







