-- Sales Performance Analytics
-- Data Preparation


-- Previewing the imported dataset
SELECT * FROM sales_dashboard.sales_data;

-- Verifying the total number of imported records
SELECT COUNT(*) AS total_rows
FROM sales_data;

-- Inspecting the table structure and data types
DESCRIBE sales_data;

-- Previewing the original date columns before conversion
SELECT `Row ID`, `Order Date`, `Ship Date`
FROM sales_data
LIMIT 25;

-- Adding new DATE columns for converted order and ship dates
ALTER TABLE sales_data
ADD COLUMN order_date DATE,
ADD COLUMN ship_date DATE;

-- Converting text-based dates into DATE format
UPDATE sales_data
SET
    order_date = STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
    ship_date = STR_TO_DATE(`Ship Date`, '%m/%d/%Y')
WHERE `Row ID` > 0;

-- Checking existing indexes
SHOW INDEX FROM sales_data;

-- Verifying table definition
SHOW CREATE TABLE sales_data;

-- Validating that Row ID values are unique
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT `Row ID`) AS unique_rows
FROM sales_data;

-- Adding Row ID as the Primary Key
ALTER TABLE sales_data
MODIFY COLUMN `Row ID` INT NOT NULL,
ADD PRIMARY KEY (`Row ID`);

-- Confirming that the Primary Key has been created
SHOW INDEX FROM sales_data;

-- Re-runing the date conversion after adding the Primary Key
UPDATE sales_data
SET
    order_date = STR_TO_DATE(`Order Date`, '%m/%d/%Y'),
    ship_date = STR_TO_DATE(`Ship Date`, '%m/%d/%Y')
WHERE `Row ID` > 0;

-- Comparing original and converted date columns
SELECT
    `Row ID`,
    `Order Date`,
    order_date,
    `Ship Date`,
    ship_date
FROM sales_data
LIMIT 10;

-- Checking for NULL values in key columns
SELECT
    SUM(order_date IS NULL) AS null_order_date,
    SUM(ship_date IS NULL) AS null_ship_date,
    SUM(Sales IS NULL) AS null_sales,
    SUM(Profit IS NULL) AS null_profit,
    SUM(Quantity IS NULL) AS null_quantity
FROM sales_data;