# 📊 Task 6: Sales Trend Analysis Using SQL

## 📝 Overview

This project is part of my **Data Analyst Internship** program and focuses on analyzing sales trends using SQL aggregation techniques. The task involves deriving insights like **monthly revenue**, **order volume**, and identifying the **top 3 performing months by sales**.

---

## 🎯 Objective

- Analyze **monthly revenue** from sales data.
- Track **order volume trends** over time.
- Identify the **top 3 months with highest sales**.

---

## 🧰 Tools & Technologies

- **Database:** MySQL
- **Language:** SQL
- **Dataset:** `Sample_Superstore_Converted.csv` (cleaned and preprocessed)
- **IDE:** MySQL Workbench / VS Code

---

## 🗂 Dataset Information

The dataset represents superstore transactional data with the following relevant columns:

| Column Name     | Description                        |
|-----------------|------------------------------------|
| Order_ID        | Unique ID for each order           |
| Order_Date      | Date when the order was placed     |
| Sales           | Revenue generated from the order   |
| ...             | (Other customer & product info)    |

---

## 📌 SQL Queries Summary

### 1️⃣ Monthly Revenue (Total Sales per Month)

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(Sales) AS total_revenue
FROM superstore
GROUP BY year, month
ORDER BY year, month;
