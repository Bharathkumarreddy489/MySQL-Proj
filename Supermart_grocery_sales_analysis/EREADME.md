# Supermart Grocery Orders Data Analysis

## Project Overview
This project involves analyzing the **Supermart Grocery Orders** dataset using SQL to uncover meaningful insights into customer behavior, sales performance, regional efficiency, and more. The analysis covers multiple areas, including total sales, profit, customer segmentation, and city-wise performance, with actionable recommendations for business growth.

## Dataset
The dataset consists of grocery orders placed by customers in Tamil Nadu, India, through a delivery application. It includes information on order ID, customer names, sales, profit, discount, category, sub-category, and regions.

## Project Objectives
- To analyze total sales, profit, and discount distribution across various categories and sub-categories.
- To identify top-performing customers and regions.
- To explore the relationship between discount and profit.
- To segment customers based on total sales volume.
- To analyze city-wise performance for specific categories.

## SQL Queries and Key Insights
Below are some of the key queries and findings from the analysis:

1. **Total Sales Amount**
   - *Query:* `SELECT SUM(sales) AS total_sales FROM 'supermart grocery sales';`
   - *Insight:* The total sales across all orders is ₹14,956,982.

2. **Category & Sub-category Sales, Profit, and Discount**
   - *Query:* Aggregation of sales, profit, and discount by category and sub-category.
   - *Insight:* "Health Drinks" under "Beverages" is the highest-selling sub-category.

3. **Top 10 Customers by Sales**
   - *Query:* Identification of top 10 customers based on total sales.
   - *Insight:* The highest sales are from customer "Vince" with ₹284,536 in total sales.

4. **Regional Sales Analysis**
   - *Query:* Sales, profit, and discount breakdown by region.
   - *Insight:* The "West" region leads with ₹4.8 million in total sales.

5. **Profit and Discount Relationship**
   - *Query:* Analysis of the relationship between discount levels and total profit.
   - *Insight:* Profits fluctuate with discount changes, highlighting the need for a balanced discount strategy.

6. **City-wise Performance for "Beverages"**
   - *Query:* City-wise performance for "Beverages" category.
   - *Insight:* Madurai leads city-wise with over ₹108,000 in sales for "Beverages."

## Recommendations
- **Optimize Discount Strategies:** Ensure a balance between profit and discount to avoid diminishing returns.
- **Target High-Performing Regions:** Focus on the "West" region for future marketing efforts to maximize sales.
- **Customer Loyalty Programs:** Strengthen engagement with high-volume customers through loyalty incentives to boost retention and repeat purchases.

## Conclusion
The analysis provides data-driven insights into customer behavior, sales patterns, and regional performance. By leveraging these findings, businesses like Supermart can implement targeted strategies for growth and improved customer satisfaction.
