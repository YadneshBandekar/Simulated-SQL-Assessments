DROP SCHEMA IF EXISTS ecomm;

CREATE SCHEMA ecomm;

-- 1. DDL STATEMENTS

-- Drop tables if they already exist to reset
DROP TABLE IF EXISTS Orders, Products, Customers;

-- Customers Table
CREATE TABLE ecomm.Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    SignupDate DATE
);

-- Products Table
CREATE TABLE ecomm.Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

-- Orders Table
CREATE TABLE ecomm.Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES ecomm.Customers(CustomerID),
    ProductID INT REFERENCES ecomm.Products(ProductID),
    Quantity INT,
    OrderDate DATE
);
