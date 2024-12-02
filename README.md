# Simulated-SQL-Assessments

These are a collection of sql assessments simulating real world business cases. A sample data set will be generated along with required DDL statements. The SQL challenges will typically range from easy to hard. 

## Industry: E-Commerce

We will mimic a real-world business case for an e-commerce platform. The dataset will represent the following tables:
	1.	Customers: Information about the customers.
	2.	Products: Details of the products available for purchase.
	3.	Orders: Records of customer purchases.

## 1. DDL Statements

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

## 2. Insert Statements
### -- Insert sample data into Customers
INSERT INTO Customers (FirstName, LastName, Email, SignupDate) VALUES
('Alice', 'Smith', 'alice.smith@example.com', '2021-01-15'),
('Bob', 'Johnson', 'bob.johnson@example.com', '2021-03-22'),
('Charlie', 'Brown', 'charlie.brown@example.com', '2022-05-18'),
('Diana', 'Prince', 'diana.prince@example.com', '2021-11-05'),
('Eve', 'Adams', 'eve.adams@example.com', '2022-08-10'),
('Frank', 'Castle', 'frank.castle@example.com', '2020-07-19'),
('Grace', 'Hopper', 'grace.hopper@example.com', '2021-09-30'),
('Hank', 'Pym', 'hank.pym@example.com', '2022-02-14'),
('Ivy', 'Taylor', 'ivy.taylor@example.com', '2022-06-22'),
('Jack', 'Reacher', 'jack.reacher@example.com', '2020-12-31');

### -- Insert sample data into Products
INSERT INTO Products (ProductName, Category, Price, Stock) VALUES
('Smartphone', 'Electronics', 699.99, 50),
('Laptop', 'Electronics', 1199.99, 30),
('Headphones', 'Accessories', 199.99, 75),
('Wireless Mouse', 'Accessories', 49.99, 100),
('Gaming Console', 'Electronics', 399.99, 40),
('Office Chair', 'Furniture', 149.99, 25),
('Desk Lamp', 'Furniture', 39.99, 50),
('Bluetooth Speaker', 'Accessories', 129.99, 60),
('Tablet', 'Electronics', 499.99, 20),
('Monitor', 'Electronics', 249.99, 15);

### -- Insert sample data into Orders
INSERT INTO Orders (CustomerID, ProductID, Quantity, OrderDate) VALUES
(1, 1, 2, '2023-01-10'),
(2, 2, 1, '2023-01-15'),
(3, 3, 3, '2023-01-20'),
(4, 4, 5, '2023-01-25'),
(5, 5, 1, '2023-02-01'),
(6, 6, 2, '2023-02-05'),
(7, 7, 4, '2023-02-10'),
(8, 8, 2, '2023-02-15'),
(9, 9, 1, '2023-02-20'),
(10, 10, 1, '2023-02-25'),
(1, 1, 1, '2023-03-01'),
(2, 3, 2, '2023-03-05'),
(3, 5, 1, '2023-03-10'),
(4, 7, 3, '2023-03-15'),
(5, 9, 1, '2023-03-20'),
(6, 10, 2, '2023-03-25'),
(7, 2, 1, '2023-03-30'),
(8, 4, 3, '2023-04-01'),
(9, 6, 2, '2023-04-05'),
(10, 8, 1, '2023-04-10');
