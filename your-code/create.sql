DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE cars (
ID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(20),
manufacturer VARCHAR(20) NOT NULL,
model VARCHAR(20) NOT NULL,
year YEAR(4) NOT NULL,
color VARCHAR(20)
);

CREATE TABLE salespersons (
ID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
staff_id INT,
name VARCHAR(20) NOT NULL,
store VARCHAR(20) NOT NULL
);

CREATE TABLE customers (
ID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
name VARCHAR(20) NOT NULL,
phone_no VARCHAR(20) NOT NULL,
email VARCHAR(45),
address VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
state_province VARCHAR(20) NOT NULL,
country VARCHAR(20) NOT NULL,
postal_code INT
);

CREATE TABLE invoices (
ID MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
invoice_num INT,
date DATE NOT NULL,
salesperson MEDIUMINT,
car MEDIUMINT,
customer MEDIUMINT
);

ALTER TABLE invoices
ADD FOREIGN KEY (salesperson)
REFERENCES salespersons(ID)
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY (car)
REFERENCES cars(ID)
ON DELETE SET NULL;

ALTER TABLE invoices
ADD FOREIGN KEY (customer)
REFERENCES customers(ID)
ON DELETE SET NULL;