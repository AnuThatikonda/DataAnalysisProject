CREATE database E_CommerceAnalysis;
USE E_CommerceAnalysis;

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(100),
    brand VARCHAR(100),
    department VARCHAR(100),
    cost DECIMAL(10, 2),
    shipping_cost_1000_mile DECIMAL(10, 2),
    retail_price DECIMAL(10, 2)
);

CREATE TABLE State_Mapping (
    state VARCHAR(50) PRIMARY KEY,
    abbreviation VARCHAR(5),
    region VARCHAR(50),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    state VARCHAR(50),
    city VARCHAR(100),
    postal_code VARCHAR(20),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6)
);

CREATE TABLE Orders (
    order_item_id INT PRIMARY KEY,
    invoice_no VARCHAR(50) NOT NULL,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    transaction_date DATE,
    retail_price DECIMAL(10, 2),
    quantity INT,
    sales DECIMAL(10, 2)
);


select count(*) from product;
select count(*) from orders;
select count(*) from customer;
select count(*) from state_mapping;


