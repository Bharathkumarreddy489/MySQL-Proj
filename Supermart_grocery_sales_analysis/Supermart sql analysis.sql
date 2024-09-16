SELECT *
FROM `supermart grocery sales - retail analytics dataset`;

-- Describe to know data type
DESCRIBE `supermart grocery sales - retail analytics dataset`;

-- Alter table names
ALTER TABLE `supermart grocery sales - retail analytics dataset`
CHANGE COLUMN `ï»¿Order ID` `order_id` TEXT,  
CHANGE COLUMN `Customer Name` `customer_name` TEXT,  
CHANGE COLUMN `Category` `category` TEXT,
CHANGE COLUMN `Sub Category` `sub_category` TEXT,
CHANGE COLUMN `City` `city` TEXT,
CHANGE COLUMN `Order Date` `order_date` TEXT, 
CHANGE COLUMN `Region` `region` TEXT,
CHANGE COLUMN `Sales` `sales` INT,  
CHANGE COLUMN `Discount` `discount` DOUBLE,  
CHANGE COLUMN `Profit` `profit` DOUBLE,  
CHANGE COLUMN `State` `state` TEXT;

-- Q1. What is the total sales amount?
SELECT 
      SUM(sales) AS total_sales_amount
FROM `supermart grocery sales - retail analytics dataset`;

-- Q2. What are the total sales, profit, and discount for each category and sub-category?
SELECT category,
       sub_category,
       SUM(sales) AS total_sales,
	   SUM(profit) AS total_profit,
       SUM(discount) AS total_discount
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY category, sub_category
ORDER BY total_sales DESC;

-- Q3. Who are the top 10 customers by total sales?
SELECT customer_name,
      SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY customer_name
ORDER BY total_sales
LIMIT 10;

-- Q4. What are the total sales, profit, and discount for each region?
SELECT region,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit,
       SUM(discount) AS total_discount
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY region
ORDER BY total_sales DESC;


-- Q5. What is the total sales, profit, and number of orders for a specific category (e.g., "Beverages") by city?
SELECT
      city,
      COUNT(order_id) AS no_of_orders,
      SUM(sales) AS total_sales,
      SUM(profit) AS total_profit,
      SUM(discount) AS total_discount
FROM `supermart grocery sales - retail analytics dataset`
WHERE category = 'Beverages'
GROUP BY city
ORDER BY total_sales DESC;

-- Q6. What is the relationship between discount and profit?
SELECT discount,
       SUM(profit) AS total_profit
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY discount
ORDER BY discount;

-- Q7. What are the total sales and profit by city? 
SELECT city, 
       SUM(sales) AS total_sales, 
       SUM(profit) AS total_profit
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY city
ORDER BY total_sales DESC;

-- Q8. What are the details of the most and least profitable orders?
SELECT order_id, customer_name, category, sub_category, sales, profit
FROM `supermart grocery sales - retail analytics dataset`
ORDER BY profit DESC
LIMIT 1;

SELECT order_id, customer_name, category, sub_category, sales, profit
FROM `supermart grocery sales - retail analytics dataset`
ORDER BY profit ASC
LIMIT 1;

-- Q9. Segment customers based on their total sales into High, Medium, and Low volume categories.
SELECT customer_name,
       SUM(sales) AS total_sales,
       CASE WHEN SUM(sales) > 320000 THEN 'High'
            WHEN SUM(sales) BETWEEN 280000 AND 320000 THEN 'Medium'
            ELSE 'Low'
	   END AS sales_categories
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY customer_name
ORDER BY total_sales DESC;

-- Q10. What is the average order value (AOV) for each category?
SELECT category,
	   AVG(sales) AS avg_order_value
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY category
ORDER BY avg_order_value DESC;

-- Q11. How many orders were placed on each date?
SELECT order_date,
       COUNT(order_id) AS number_of_orders
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY order_date
ORDER BY order_date;

-- Q12. Which dates had the highest and lowest sales, and what were the sales amounts?
SELECT order_date,
       SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY order_date
ORDER BY total_sales DESC
LIMIT 1;

SELECT order_date,
       SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY order_date
ORDER BY total_sales ASC
LIMIT 1;

-- Q13. What is the profit margin for each sub-category?
SELECT sub_category,
       SUM(profit) / SUM(sales) * 100 AS profit_margin
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY sub_category
ORDER BY profit_margin;

-- Q14. How many repeat customers are there, and what is their total sales contribution?
SELECT customer_name,
       COUNT(order_id) AS number_of_orders,
       SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY customer_name
HAVING number_of_orders > 1
ORDER BY total_sales DESC;

-- Q15. Which regions offer the highest and lowest average discounts?
SELECT region,
	   AVG(discount) AS avg_discount
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY region
ORDER BY avg_discount DESC;

-- Q16. How many orders were placed in each state, broken down by category?
SELECT category,
       state,
       COUNT(order_id) AS number_of_orders
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY state, category
ORDER BY state, category;

-- Q17. What percentage of the total profit does each category contribute?
SELECT category, 
       SUM(profit) AS total_profit,
       (SUM(profit) / (SELECT SUM(profit) FROM `supermart grocery sales - retail analytics dataset`) * 100) AS profit_contribution_per
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY category
ORDER BY profit_contribution_per;

-- Q18. What are the total sales and profit by city in a specific region (e.g., "West")?
SELECT city,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM `supermart grocery sales - retail analytics dataset`
WHERE region = 'West'
GROUP BY city
ORDER BY total_sales DESC;

-- Q19. Segment customers based on their total profit contribution into High, Medium, and Low profit segments.
SELECT customer_name,
       SUM(profit) AS total_profit,
       CASE WHEN SUM(profit) > 86000 THEN 'High'
            WHEN SUM(profit) BETWEEN 68000 AND 86000 THEN 'Medium'
            ELSE 'Low'
	   END AS profit_segment
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY customer_name
ORDER BY total_profit DESC; 

-- Q20. What is the distribution of sales by sub-category in a specific state (e.g., "Tamil Nadu")?
SELECT sub_category,
       SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
WHERE state = 'Tamil Nadu'
GROUP BY sub_category
ORDER BY total_sales DESC;

-- Q21. Which sub-categories are the best performers in each state?
SELECT state,
       sub_category,
       SUM(sales) AS total_sales
FROM `supermart grocery sales - retail analytics dataset`
GROUP BY state, sub_category
ORDER BY state, total_sales DESC;