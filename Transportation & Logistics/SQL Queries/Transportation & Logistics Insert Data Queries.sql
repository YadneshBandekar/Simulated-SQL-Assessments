use challenges;
go
  
-- insert data into table logistics.fleet 
INSERT INTO logistics.fleet 
    (VehicleType, Capacity, FuelEfficiency, ActiveSince)
VALUES 
    ('Truck', 2000, 8.5, '2018-01-15'),
    ('Van', 800, 15.2, '2020-06-10'),
    ('Bike', 50, NULL, '2021-04-01'),
    ('Truck', 2500, 7.8, '2017-09-12'),
    ('Van', 1000, 13.5, '2019-02-28'),
    ('Bike', 60, NULL, '2023-03-05'),
    ('Skateboard', 10, NULL, '2023-03-05');

SELECT * FROM logistics.fleet;
GO
-- insert data into table logistics.deliveries 
INSERT INTO logistics.deliveries
    (VehicleID, DriverID, DeliveryDate, Distance, DeliveryTime, Status, Revenue)
VALUES
    (1, 101, '2023-02-14', 120.5, 3.5, 'Completed', 250.00),
    (2, 102, '2023-02-15', 45.0, 1.8, 'Completed', 75.00),
    (3, 103, '2023-02-16', 10.2, 0.5, 'Completed', 25.00),
    (4, 101, '2023-02-17', 190.0, 5.5, 'Completed', 350.00),
    (5, 102, '2023-02-18', 50.0, 2.0, 'Failed', 0.00),
    (6, 104, '2023-02-19', 15.0, 0.7, 'Pending', NULL),
    (1, 101, '2023-02-20', 90.3, 3.0, 'Completed', 200.00),
    (2, 102, '2023-02-21', 30.0, 1.2, 'Completed', 50.00),
    (5, 103, '2023-02-22', 8.5, 0.4, 'Completed', 20.00),
    (3, 103, '2023-02-23', 12.0, 0.5, 'Completed', 30.00),
    (4, 104, '2023-02-24', 25.0, 1.0, 'Completed', 60.00),
    (6, 105, '2023-02-25', 5.0, 0.2, 'Completed', 15.00);
    
SELECT * FROM logistics.deliveries;
GO

-- insert data into table logistics.drivers 
INSERT INTO logistics.drivers 
    (FirstName, LastName, HireDate, Status)
VALUES
    ('John', 'Doe', '2016-03-01', 'Active'),
    ('Jane', 'Smith', '2018-07-15', 'Active'),
    ('Carlos', 'Lopez', '2020-11-20', 'Active'),
    ('Amy', 'Davis', '2022-04-10', 'Active'),
    ('Jake', 'White', '2019-02-05', 'On Leave');
GO

select * from logistics.drivers;
GO
