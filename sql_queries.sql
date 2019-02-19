
CREATE TABLE Customers(CustomerID INT auto_increment PRIMARY KEY,
                        FirstName VARCHAR(100),
                        LastName VARCHAR(100),
                        Gender VARCHAR(50),
                        Address VARCHAR(50),
                        Phone INT(10),
                        Email VARCHAR(100),
                        City VARCHAR(100),
                        Country VARCHAR(100)
                        );

CREATE TABLE Employees(EmployeeID INT auto_increment PRIMARY KEY,
                        FirstName VARCHAR(50),
                        LastName VARCHAR(50),
                        Email VARCHAR(100),
                        JobTitle VARCHAR(50)
                        );

CREATE TABLE Orders(OrderId INT auto_increment PRIMARY KEY,
                    OrderDate DATETIME,
                    RequiredDate DATETIME,
                    ShippedDate DATETIME,
                    Status VARCHAR(50)
                    );

CREATE TABLE Payments(PaymentsID INT auto_increment PRIMARY KEY,
                    CustomerId INT,
                    PaymentDate DATETIME,
                    Amount DECIMAL(5,2),
                    FOREIGN KEY custID(CustomerId) REFERENCES Payments(PaymentID)
                    );

CREATE TABLE Products(ProductsId INT auto_increment PRIMARY KEY,
                    ProductName VARCHAR(50),
                    Description VARCHAR(100),
                    BuyPrice DECIMAL(5,2)
                    );

--inserting data into Customers Table
INSERT INTO Customers VALUES
    (1, 'John', 'Hibert', 'Male', '284 Chaucer st', 084789657, 'john@gmail.com', 'Johannesburg', 'South Africa'),
    (2, 'Thando', 'Sithole', 'Female', '240 Sect 1', 0794445584, 'thando@gmail.com', 'Cape Town', 'South Africa'),
    (3, 'Leon', 'Glen', 'Male', '81 Everton Rd Gillits', 0820832830, 'Leon@gmail.com', 'Durban', 'South Africa'),
    (4, 'Charl', 'Muller', 'Male', '290A Dorset Ecke', +4485687255, 'Charl.muller@gmail.com', 'Berlin', 'Germany'),
    (5, 'julia', 'Stein', 'Female', '2 Wernerring', +4486724458, 'Js234@yahoo.com', 'Frankfurt', 'Germany');


-- inserting data into Employees Table
INSERT INTO Employees VALUES
    (1, 'Kani', 'Matthew', 'Kmat@gmail.com', 'Manager'),
    (2, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
    (3, 'Gideon', 'Maduku', 'Gm@gmail.com', 'Accountant');

-- inserting data into Orders Table
INSERT INTO Orders VALUES
    (1, '2018-09-01', '2018-09-05', '2018-09-02', 'Not Shipped'),
    (2, '2018-09-01', '2018-09-04', '2018-09-03', 'Shipped'),
    (3, '2018-09-01', '2018-09-03', '2018-09-02', 'Not Shipped');

-- inserting data into Payments Table
INSERT INTO Payments VALUES
    (1, 1, '2018-09-01', 100.00),
    (2, 2, '2018-09-01', 250.75);



-- inserting data into Products Table
INSERT INTO Products VALUES
    (1, 'Harley Davidson Chopper', 'This replica features working kickstand, front suspension, gear-shift lever', 150.75),
    (2, 'Classic Car', 'Turnable front wheels, steering function', 550.75),
    (3, 'Sports Car', 'Turnable front wheels, steering function', 700.60);

SELECT * FROM Customers;

SELECT FirstName FROM Customers;

SELECT FirstName FROM Customers WHERE CustomerID=1;

UPDATE Customers SET FirstName='Lerato', LastName='Mabitso' WHERE CustomerID=2;

DELETE FROM Customers WHERE CustomerID=2;

SELECT DISTINCT * FROM Products;

SELECT MAX(Amount) FROM Payments;

SELECT * FROM Customers ORDER BY Country;

SELECT * FROM Products WHERE BuyPrice BETWEEN 100 AND 600;

SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';

SELECT * FROM Customers WHERE City='Cape Town' OR City='Durban';

SELECT * FROm Products WHERE BuyPrice>500;

SELECT SUM(Amount) FROM Payments;

SELECT COUNT(Status) FROM Orders WHERE Status='Shipped';

SELECT CONCAT('$', FORMAT(AVG(BuyPrice * 12), 2)) AS 'Price In Dollars', CONCAT ('R', FORMAT(AVG(BuyPrice), 2)) AS 'Price In Rands' FROM Products;

SELECT Orders.OrderId, Customers.FirstName, Customers.LastName, Customers.Email FROM Orders   INNER JOIN Customers  ON Orders.OrderId=Customers.CustomerID;
