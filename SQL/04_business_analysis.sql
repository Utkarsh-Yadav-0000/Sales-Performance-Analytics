-- Business Analysis

-- ==========================================================
-- Query 1 : Sales by Region
-- ==========================================================
-- Business Question:
-- Which region generates the highest sales revenue?

-- SQL Query
SELECT Region, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Result
------------------------------------------------------------
-- West     : 713,471.34
-- East     : 672,194.05
-- Central  : 497,800.87
-- South    : 388,983.59

-- Business Insight
------------------------------------------------------------
-- West generated the highest sales revenue, while South
-- recorded the lowest sales among all regions.

-- ==========================================================
-- Query 2 : Profit by Region
-- ==========================================================
-- Business Question:
-- Which region generates the highest profit?

-- SQL Query
SELECT Region, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Region
ORDER BY Total_Profit DESC;

-- Result
------------------------------------------------------------
-- West     : 106,021.15
-- East     : 90,672.01
-- South    : 46,035.69
-- Central  : 40,128.90

-- Business Insight
------------------------------------------------------------
-- West is the most profitable region. Central generates more sales than South but earns lower profit, indicating
-- relatively weaker profitability.

-- ==========================================================
-- Query 3 : Sales by Category
-- ==========================================================
-- Business Question:
-- Which product category generates the highest sales?

-- SQL Query
SELECT Category, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-- Result
------------------------------------------------------------
-- Technology      : 835,900.07
-- Furniture       : 733,046.86
-- Office Supplies : 703,502.93

-- Business Insight
------------------------------------------------------------
-- Technology is the highest revenue-generating category,
-- followed by Furniture. Office Supplies contributes the lowest sales.

-- ==========================================================
-- Query 4 : Profit by Category
-- ==========================================================
-- Business Question:
-- Which product category generates the highest profit?

-- SQL Query
SELECT Category, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Result
------------------------------------------------------------
-- Technology      : 145,387.10
-- Office Supplies : 120,489.89
-- Furniture       : 16,980.77

-- Business Insight
------------------------------------------------------------
-- Technology is the most profitable category. Furniture generates high sales but comparatively low profit,
-- suggesting lower profit margins or higher discounts.

-- ==========================================================
-- Query 5 : Top 10 Customers by Sales
-- ==========================================================
-- Business Question:
-- Who are the top 10 customers by total sales?

-- SQL Query
SELECT `Customer Name`, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Result
------------------------------------------------------------
-- 1. Sean Miller          : 25,043.05
-- 2. Tamara Chand         : 19,017.85
-- 3. Raymond Buch         : 15,117.34
-- 4. Tom Ashbrook         : 14,595.62
-- 5. Adrian Barton        : 14,355.61
-- 6. Sanjit Chand         : 14,142.33
-- 7. Ken Lonsdale         : 14,071.92
-- 8. Hunter Lopez         : 12,873.30
-- 9. Sanjit Engle         : 12,209.44
-- 10. Christopher Conant  : 12,129.07

-- Business Insight
------------------------------------------------------------
-- Sean Miller is the highest-value customer based on total sales. The top 10 customers represent key revenue
-- contributors and should be prioritized for retention strategies.

-- ==========================================================
-- Query 6 : Top 10 Customers by Profit
-- ==========================================================
-- Business Question:
-- Which customers generate the highest profit?

-- SQL Query
SELECT `Customer Name`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY `Customer Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Result
------------------------------------------------------------
-- 1. Tamara Chand           : 8,964.48
-- 2. Raymond Buch           : 6,976.10
-- 3. Sanjit Chand           : 5,757.41
-- 4. Hunter Lopez           : 5,622.43
-- 5. Adrian Barton          : 5,438.91
-- 6. Tom Ashbrook           : 4,703.79
-- 7. Christopher Martinez   : 3,899.89
-- 8. Keith Dawkins          : 3,038.63
-- 9. Andy Reiter            : 2,884.62
-- 10. Daniel Raglin         : 2,869.08

-- Business Insight
------------------------------------------------------------
-- Tamara Chand is the highest-profit customer. Several customers rank highly in both sales and profit, making
-- them excellent candidates for customer retention and loyalty initiatives.

-- ==========================================================
-- Query 7 : Monthly Sales Trend
-- ==========================================================
-- Business Question:
-- How have sales changed over time on a monthly basis?

-- SQL Query
SELECT DATE_FORMAT(order_date, '%Y-%m') AS Month, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Month
ORDER BY Month;

-- Business Insight
------------------------------------------------------------
-- Sales show an overall upward trend from 2014 to 2017. November 2017 recorded the highest monthly sales
-- (117,383.38). Sales generally peak during the final quarter of the year, indicating strong seasonal demand.

-- ==========================================================
-- Query 8 : Top 10 Products by Sales
-- ==========================================================
-- Business Question:
-- Which products generate the highest sales revenue?

-- SQL Query
SELECT `Product Name`, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- Business Insight
------------------------------------------------------------
-- Canon imageCLASS 2200 Advanced Copier is the highest revenue-generating product. High-value technology and
-- office equipment dominate the top-selling products, indicating strong customer demand in these categories.

-- ==========================================================
-- Query 9 : Top 10 Products by Profit
-- ==========================================================
-- Business Question:
-- Which products generate the highest profit?

-- SQL Query
SELECT `Product Name`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

-- Business Insight
------------------------------------------------------------
-- Canon imageCLASS 2200 Advanced Copier is the most profitable product. Technology and office equipment
-- dominate the top-profit products, indicating they contribute significantly to overall business profitability.

-- ==========================================================
-- Query 10 : Sales by Segment
-- ==========================================================
-- Business Question:
-- Which customer segment generates the highest sales?

-- SQL Query
SELECT Segment, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- Result
------------------------------------------------------------
-- Consumer     : 1,150,166.18
-- Corporate    :   696,604.51
-- Home Office  :   425,679.16

-- Business Insight
------------------------------------------------------------
-- Consumer is the highest revenue-generating customer
-- segment, followed by Corporate. Home Office contributes
-- the lowest sales among the three segments.

-- ==========================================================
-- Query 11 : Profit by Segment
-- ==========================================================
-- Business Question:
-- Which customer segment generates the highest profit?

-- SQL Query
SELECT Segment, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- Result
------------------------------------------------------------
-- Consumer     : 132,669.78
-- Corporate    :  90,366.30
-- Home Office  :  59,821.68

-- Business Insight
------------------------------------------------------------
-- Consumer is the most profitable customer segment, followed by Corporate. Home Office contributes the least profit among all customer segments.

-- ==========================================================
-- Query 12 : Sales by Sub-Category
-- ==========================================================
-- Business Question:
-- Which sub-categories generate the highest sales revenue?

-- SQL Query
SELECT `Sub-Category`, ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;

-- Business Insight
------------------------------------------------------------
-- Phones and Chairs are the highest revenue-generating sub-categories. Storage, Tables, and Binders also
-- contribute significantly to sales, while Fasteners, Labels, and Envelopes generate the least revenue.

-- ==========================================================
-- Query 13 : Profit by Sub-Category
-- ==========================================================
-- Business Question:
-- Which sub-categories generate the highest profit?

-- SQL Query
SELECT `Sub-Category`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

-- Business Insight
------------------------------------------------------------
-- Copiers is the most profitable sub-category, followed by Phones and Accessories. Tables, Bookcases, and Supplies
-- recorded negative profits, indicating a need to review pricing, discounts, or cost structure.

-- ==========================================================
-- Query 14 : Yearly Sales & Profit
-- ==========================================================
-- Business Question:
-- How have sales and profit changed each year?

-- SQL Query
SELECT
    YEAR(order_date) AS Year,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY YEAR(order_date)
ORDER BY Year;

-- Result
------------------------------------------------------------
-- 2014 : Sales = 481,763.80 | Profit = 49,044.43
-- 2015 : Sales = 464,426.24 | Profit = 60,907.69
-- 2016 : Sales = 601,265.26 | Profit = 80,130.65
-- 2017 : Sales = 724,994.56 | Profit = 92,774.99

-- Business Insight
------------------------------------------------------------
-- Overall business performance improved over time. Although sales declined slightly in 2015, both sales and profit
-- showed strong growth in 2016 and reached their highest levels in 2017.

-- ==========================================================
-- Query 15 : Quarterly Sales Trend
-- ==========================================================
-- Business Question:
-- How do sales vary across different quarters of the year?

-- SQL Query
SELECT
    YEAR(order_date) AS Year,
    QUARTER(order_date) AS Quarter,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY YEAR(order_date), QUARTER(order_date)
ORDER BY Year, Quarter;

-- Business Insight
------------------------------------------------------------
-- Sales consistently peak in Q4 every year, indicating a strong seasonal trend. Q4 2017 recorded the highest
-- quarterly sales in the dataset, suggesting increased demand during the year-end period.

-- ==========================================================
-- Query 16 : Average Shipping Time by Ship Mode
-- ==========================================================
-- Business Question:
-- Which shipping mode delivers orders the fastest?

-- SQL Query
SELECT
    `Ship Mode`,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS Avg_Shipping_Days
FROM sales_data
GROUP BY `Ship Mode`
ORDER BY Avg_Shipping_Days;

-- Result
------------------------------------------------------------
-- Same Day        : 0.05 days
-- First Class     : 2.18 days
-- Second Class    : 3.24 days
-- Standard Class  : 5.00 days

-- Business Insight
------------------------------------------------------------
-- Same Day is the fastest delivery option, while Standard Class has the longest average shipping time. The average
-- delivery durations align with the expected service levels for each shipping mode.

-- ==========================================================
-- Query 17 : Average Shipping Time by Region
-- ==========================================================
-- Business Question:
-- Does shipping time differ across regions?

-- SQL Query
SELECT
    Region,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS Avg_Shipping_Days
FROM sales_data
GROUP BY Region
ORDER BY Avg_Shipping_Days;

-- Result
------------------------------------------------------------
-- East     : 3.90 days
-- West     : 3.93 days
-- South    : 3.96 days
-- Central  : 4.05 days

-- Business Insight
------------------------------------------------------------
-- Shipping times are highly consistent across all regions.East has the fastest average delivery time, while Central
-- is only slightly slower, indicating an efficient and balanced logistics network.

-- ==========================================================
-- Query 18 : Average Discount by Category
-- ==========================================================
-- Business Question:
-- Which product category receives the highest average discount?

-- SQL Query
SELECT
    Category,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount_Percentage
FROM sales_data
GROUP BY Category
ORDER BY Avg_Discount_Percentage DESC;

-- Result
------------------------------------------------------------
-- Furniture        : 17.44%
-- Office Supplies  : 15.56%
-- Technology       : 13.22%

-- Business Insight
------------------------------------------------------------
-- Furniture receives the highest average discount, which aligns with its relatively low profitability despite high
-- sales. Technology receives the lowest average discount while generating the highest profit.

-- ==========================================================
-- Query 19 : Profit by Discount Range
-- ==========================================================
-- Business Question:
-- How does profitability change across different discount ranges?

-- SQL Query
SELECT
    CASE
        WHEN Discount = 0 THEN '0%'
        WHEN Discount <= 0.20 THEN '1-20%'
        WHEN Discount <= 0.50 THEN '21-50%'
        ELSE 'Above 50%'
    END AS Discount_Range,
    COUNT(*) AS Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY Discount_Range
ORDER BY
CASE Discount_Range
    WHEN '0%' THEN 1
    WHEN '1-20%' THEN 2
    WHEN '21-50%' THEN 3
    ELSE 4
END;

-- Business Insight
------------------------------------------------------------
-- Orders without discounts generate the highest profits. Discounts above 20% lead to overall losses, with discounts
-- above 50% producing the largest negative profits. This suggests that the current discount strategy 
-- negatively impacts business profitability.

-- ==========================================================
-- Query 20 : Categories with Above-Average Sales
-- ==========================================================
-- Business Question:
-- Which product categories have total sales greater than the
-- average sales across all categories?

-- SQL Query
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales_data
GROUP BY Category
HAVING SUM(Sales) >
(
    SELECT AVG(Category_Sales)
    FROM
    (
        SELECT SUM(Sales) AS Category_Sales
        FROM sales_data
        GROUP BY Category
    ) AS avg_sales
)
ORDER BY Total_Sales DESC;

-- Result
------------------------------------------------------------
-- Technology : 835,900.07

-- Business Insight
------------------------------------------------------------
-- Technology is the only category with total sales above the average 
-- across all categories, making it the strongest revenue contributor.

-- ==========================================================
-- Query 21 : High-Profit Customers
-- ==========================================================
-- Business Question:
-- Which customers have generated more than 5,000 in total profit?

-- SQL Query
SELECT `Customer Name`, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY `Customer Name`
HAVING SUM(Profit) > 5000
ORDER BY Total_Profit DESC;

-- Result
------------------------------------------------------------
-- Tamara Chand    : 8,964.48
-- Raymond Buch    : 6,976.10
-- Sanjit Chand    : 5,757.41
-- Hunter Lopez    : 5,622.43
-- Adrian Barton   : 5,438.91

-- Business Insight
------------------------------------------------------------
-- Only five customers generated more than 5,000 in profit,
-- making them the company's most valuable profit contributors.

-- ==========================================================
-- Query 22 : Top 5 States by Profit
-- ==========================================================
-- Business Question:
-- Which states generate the highest profit?

-- SQL Query
SELECT State, ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales_data
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 5;

-- Result
------------------------------------------------------------
-- California : 74,669.20
-- New York   : 73,507.13
-- Washington : 32,976.62
-- Michigan   : 24,340.95
-- Virginia   : 18,461.02

-- Business Insight
------------------------------------------------------------
-- California and New York are the company's most profitable
-- markets. These states should be prioritized for customer
-- retention, marketing campaigns, and future business expansion.