CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  email VARCHAR,
  phone_number VARCHAR,
  address VARCHAR  
);

CREATE TABLE Salesperson (
  seller_id SERIAL PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  phone_number VARCHAR  
);

CREATE TABLE Cars (
  car_id SERIAL PRIMARY KEY,
  make VARCHAR,
  model VARCHAR,
  car_year INTEGER,
  price NUMERIC(10,2),
  seller_id VARCHAR,
  customer_id VARCHAR  
    FOREIGN KEY (seller_id) REFERENCES Salesperson(seller_id),  
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Sales_invoice (
  invoice_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  purchase_date DATE,
  amount NUMERIC(10,2),
  seller_id INTEGER,
  car_id INTEGER, 
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id),
 
    FOREIGN KEY (seller_id)
      REFERENCES Salesperson(seller_id),
	
    FOREIGN KEY (car_id)
      REFERENCES Cars(car_id)
);

CREATE TABLE Service_invoice (
  service_id SERIAL PRIMARY KEY,
  description VARCHAR,
  serv_date DATE,
  total_cost NUMERIC,
  car_id VARCHAR,
  customer_id VARCHAR
  
   -FOREIGN KEY (car_id)
      REFERENCES Cars(car_id),
 
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);

CREATE TABLE Mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  service_id INTEGER
  
    FOREIGN KEY (service_id)
      REFERENCES Service_invoice(service_id)
);

CREATE TABLE Parts (
  parts_id SERIAL PRIMARY KEY,
  description VARCHAR,
  service_id INTEGER,
  
);



