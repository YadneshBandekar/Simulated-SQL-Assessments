# Simulated-SQL-Assessments

These are a collection of sql assessments simulating real world business cases. A sample data set will be generated along with required DDL statements. The SQL challenges will typically range from easy to hard. 

## Industry: E-Commerce

We will mimic a real-world business case for an e-commerce platform. The dataset will represent the following tables:
	1.	Customers: Information about the customers.
	2.	Products: Details of the products available for purchase.
	3.	Orders: Records of customer purchases.

## DDL Statements

### -- Drop tables if they already exist to reset
DROP TABLE IF EXISTS Orders, Products, Customers;

### -- Customers Table
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    SignupDate DATE
);

### -- Products Table
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

### -- Orders Table
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INT REFERENCES Customers(CustomerID),
    ProductID INT REFERENCES Products(ProductID),
    Quantity INT,
    OrderDate DATE
);
