#--------------------------------------------Assignment----------------------------------------

USE assignment;# Creating a database

# Creating table
CREATE TABLE Superstore (
    Row_ID INT,
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Ship_Date DATE,
    Ship_Mode VARCHAR(50),
    Customer_ID VARCHAR(20),
    Customer_Name VARCHAR(100),
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Postal_Code VARCHAR(10),
    Region VARCHAR(50),
    Product_ID VARCHAR(20),
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    Product_Name VARCHAR(255),
    Sales DECIMAL(10,2),
    Quantity INT,
    Discount DECIMAL(4,2),
    Profit DECIMAL(10,2)
);

select * from superstore;   

#---------------------------------- Monthly Revenue (Total Sales per Month & Year)--------------------------------------

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(Sales) AS total_revenue
FROM superstore
GROUP BY year, month
ORDER BY year, month;

#---------------------------------- Monthly Order Volume (Number of Unique Orders per Month)-------------------------------

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    COUNT(DISTINCT order_id) AS order_volume
FROM superstore
GROUP BY year, month
ORDER BY year, month;

#--------------------------------------- Top 3 Months by Sales----------------------------------------------

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(Sales) AS total_revenue
FROM superstore
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
