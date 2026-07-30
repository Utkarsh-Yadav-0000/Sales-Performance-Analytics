-- KPI Analysis

-- Total Records
SELECT COUNT(*)
FROM sales_data;

-- Total Orders
SELECT COUNT(DISTINCT `Order ID`)
FROM sales_data;

-- Total Sales
SELECT ROUND(SUM(Sales),2)
FROM sales_data;

-- Total Profit
SELECT ROUND(SUM(Profit),2)
FROM sales_data;

-- Average Order Value
SELECT
ROUND(SUM(Sales)/COUNT(DISTINCT `Order ID`),2)
AS Avg_Order_Value
FROM sales_data;