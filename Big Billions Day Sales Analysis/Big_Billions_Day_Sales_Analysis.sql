SELECT * FROM bbd.`bbd sales data`;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM `bbd sales data` WHERE Amount IS NULL;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE `bbd sales data`
MODIFY COLUMN Amount INT;

SELECT COUNT(*) AS TotalRows, AVG(Amount) AS AvgAmount, MIN(Amount) AS MinAmount, MAX(Amount) AS MaxAmount
FROM `bbd sales data`;

SELECT Gender, SUM(Amount) AS TotalSales
FROM `bbd sales data`
GROUP BY Gender
ORDER BY TotalSales DESC;

SELECT State, SUM(Orders) AS TotalOrders
FROM `bbd sales data`
GROUP BY State
ORDER BY TotalOrders DESC
LIMIT 10;

SELECT State, SUM(Amount) AS TotalSales
FROM `bbd sales data`
GROUP BY State
ORDER BY TotalSales DESC
LIMIT 10;

SELECT Marital_Status, Gender, SUM(Amount) AS TotalSales
FROM `bbd sales data`
GROUP BY Marital_Status, Gender
ORDER BY TotalSales DESC;

SELECT Occupation, SUM(Amount) AS TotalSales
FROM `bbd sales data`
GROUP BY Occupation
ORDER BY TotalSales DESC;

SELECT Product_Category, SUM(Amount) AS TotalSales
FROM `bbd sales data`
GROUP BY Product_Category
ORDER BY TotalSales DESC;

SELECT Product_ID, SUM(Orders) AS TotalOrders
FROM `bbd sales data`
GROUP BY Product_ID
ORDER BY TotalOrders DESC
LIMIT 10;