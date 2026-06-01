CREATE DATABASE superstore_db;
USE superstore_db;
SELECT COUNT(*) AS total_rows
FROM train;
SELECT *
FROM train
LIMIT 5;
SHOW COLUMNS FROM train;

SELECT State,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT Region,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;


SELECT Category,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;


SELECT `Sub-Category`,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;


SELECT `Product Name`,
       ROUND(SUM(Sales),2) AS Revenue
FROM train
GROUP BY `Product Name`
ORDER BY Revenue DESC
LIMIT 10;


SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS Total_Spent
FROM train
GROUP BY `Customer Name`
ORDER BY Total_Spent DESC
LIMIT 10;


SELECT Segment,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY Segment
ORDER BY Total_Sales DESC;


SELECT City,
       ROUND(SUM(Sales),2) AS Total_Sales
FROM train
GROUP BY City
ORDER BY Total_Sales DESC
LIMIT 10;


SELECT Segment,
       COUNT(DISTINCT `Customer ID`) AS Customer_Count
FROM train
GROUP BY Segment;