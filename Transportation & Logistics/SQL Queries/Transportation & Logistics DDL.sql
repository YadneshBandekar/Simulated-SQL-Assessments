-- create schema logistics if it doesnt exist
IF (SCHEMA_ID('logistics') IS NOT NULL)
BEGIN
    DROP SCHEMA [logistics];
END;
GO

CREATE SCHEMA [logistics] AUTHORIZATION [dbo];
GO

-- create table logistics.fleet -- create table logistics.fleet -- create table logistics.fleet 
IF OBJECT_ID('logistics.fleet') IS NOT NULL 
DROP TABLE logistics.fleet;
GO

CREATE TABLE logistics.fleet
(
    VehicleID int IDENTITY(1,1) PRIMARY KEY,
    VehicleType VARCHAR(50),
    Capacity INTEGER, -- in cubic feet
    FuelEfficiency DECIMAL(5,2), -- in miles per gallon
    ActiveSince DATE
);
GO

-- create table logistics.deliveries -- create table logistics.deliveries -- create table logistics.deliveries 
IF OBJECT_ID('logistics.deliveries') IS NOT NULL 
DROP TABLE logistics.deliveries;
GO

CREATE TABLE logistics.deliveries 
(
    DeliveryID int IDENTITY(1,1) PRIMARY KEY,
    VehicleID INTEGER REFERENCES Logistics.Fleet(VehicleID),
    DriverID INTEGER,
    DeliveryDate DATE,
    Distance DECIMAL(7,2), -- in miles
    DeliveryTime DECIMAL(5,2), -- in hours
    Status VARCHAR(20), -- 'Completed', 'Failed', 'Pending'
    Revenue DECIMAL(10,2)
);

-- create table logistics.drivers -- create table logistics.drivers -- create table logistics.drivers 
IF OBJECT_ID('logistics.drivers') IS NOT NULL 
DROP TABLE logistics.drivers;
GO

CREATE TABLE logistics.drivers 
(
    DriverID int IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    HireDate DATE,
    Status VARCHAR(20) -- 'Active', 'On Leave', 'Terminated'
);

