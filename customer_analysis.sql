CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Purchase_Count INT,
    Total_Spending DECIMAL(10,2)
);

INSERT INTO Customers
(Customer_ID, Customer_Name, Age, Gender, City, Purchase_Count, Total_Spending)
VALUES
(101, 'Arun', 22, 'Male', 'Chennai', 5, 12500),
(102, 'Priya', 28, 'Female', 'Chennai', 8, 18500),
(103, 'Kumar', 35, 'Male', 'Bangalore', 3, 7500),
(104, 'Divya', 24, 'Female', 'Chennai', 6, 14200),
(105, 'Ravi', 41, 'Male', 'Coimbatore', 10, 25000),
(106, 'Anitha', 31, 'Female', 'Madurai', 7, 16800),
(107, 'Suresh', 26, 'Male', 'Bangalore', 4, 9200),
(108, 'Meena', 29, 'Female', 'Chennai', 9, 21500),
(109, 'Vijay', 38, 'Male', 'Salem', 2, 5400),
(110, 'Lakshmi', 45, 'Female', 'Coimbatore', 11, 28500),
(111, 'Karthik', 23, 'Male', 'Chennai', 6, 13500),
(112, 'Sangeetha', 34, 'Female', 'Madurai', 5, 11800),
(113, 'Prakash', 27, 'Male', 'Bangalore', 8, 19200),
(114, 'Deepa', 30, 'Female', 'Chennai', 4, 8600),
(115, 'Ramesh', 50, 'Male', 'Coimbatore', 12, 32000),
(116, 'Kavya', 25, 'Female', 'Chennai', 7, 15400),
(117, 'Manoj', 36, 'Male', 'Madurai', 3, 6800),
(118, 'Swetha', 32, 'Female', 'Bangalore', 9, 22100),
(119, 'Ajay', 21, 'Male', 'Chennai', 2, 4200),
(120, 'Rekha', 39, 'Female', 'Salem', 6, 13700),
(121, 'Dinesh', 44, 'Male', 'Coimbatore', 8, 20500),
(122, 'Pooja', 26, 'Female', 'Chennai', 10, 24800),
(123, 'Sathish', 33, 'Male', 'Bangalore', 5, 11600),
(124, 'Nandhini', 29, 'Female', 'Madurai', 7, 15900),
(125, 'Gokul', 37, 'Male', 'Chennai', 4, 9700),
(126, 'Harini', 23, 'Female', 'Chennai', 9, 20300),
(127, 'Bala', 48, 'Male', 'Coimbatore', 13, 34500),
(128, 'Shalini', 35, 'Female', 'Bangalore', 6, 14800),
(129, 'Murugan', 42, 'Male', 'Madurai', 5, 12400),
(130, 'Keerthana', 27, 'Female', 'Chennai', 8, 18700);

SELECT *
FROM Customers;

SELECT COUNT(*) AS total_customers
FROM Customers;

SELECT SUM(Total_Spending) AS total_spending
FROM Customers;

SELECT AVG(Total_Spending) AS average_spending
FROM Customers;

SELECT TOP 1 *
FROM Customers
ORDER BY Total_Spending DESC;

SELECT TOP 1 *
FROM Customers
ORDER BY Total_Spending ASC;

SELECT TOP 5
    Customer_Name,
    City,
    Purchase_Count,
    Total_Spending
FROM Customers
ORDER BY Total_Spending DESC;

SELECT
    City,
    COUNT(*) AS total_customers
FROM Customers
GROUP BY City;

SELECT
    City,
    SUM(Total_Spending) AS total_spending
FROM Customers
GROUP BY City;

SELECT
    City,
    AVG(Total_Spending) AS average_spending
FROM Customers
GROUP BY City;

SELECT
    Customer_Name,
    City,
    Total_Spending
FROM Customers
WHERE Total_Spending >= 20000
ORDER BY Total_Spending DESC;

SELECT COUNT(*) AS high_value_customers
FROM Customers
WHERE Total_Spending >= 20000;

SELECT
    City,
    COUNT(*) AS high_value_customers
FROM Customers
WHERE Total_Spending >= 20000
GROUP BY City;

SELECT TOP 1
    City,
    SUM(Total_Spending) AS total_spending
FROM Customers
GROUP BY City
ORDER BY SUM(Total_Spending) DESC;

SELECT TOP 1
    City,
    AVG(Total_Spending) AS average_spending
FROM Customers
GROUP BY City
ORDER BY AVG(Total_Spending) DESC;

SELECT
    Customer_Name,
    Purchase_Count,
    Total_Spending
FROM Customers
WHERE Purchase_Count > 5
ORDER BY Purchase_Count DESC;

SELECT *
FROM Customers
WHERE City = 'Chennai';

SELECT
    Customer_Name,
    Age,
    City,
    Total_Spending
FROM Customers
WHERE Age BETWEEN 25 AND 35;