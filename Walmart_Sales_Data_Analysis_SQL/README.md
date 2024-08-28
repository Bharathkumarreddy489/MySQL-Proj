# Walmart Sales Analysis

This project contains SQL scripts for analyzing sales data from Walmart. The analysis covers various aspects such as revenue, product performance, customer behavior, and sales patterns based on time and location.

## Database Setup

1. Create Database and Table

   The script creates a database named `walmartSaless` and a table named `sales` with the following columns:
   - `invoice_id`: Unique identifier for each transaction.
   - `branch`: Store branch identifier.
   - `city`: City where the store is located.
   - `customer_type`: Type of customer (e.g., Member, Normal).
   - `gender`: Gender of the customer.
   - `product_line`: Product category.
   - `unit_price`: Price per unit of the product.
   - `quantity`: Number of units sold.
   - `tax_pct`: Tax percentage applied to the sale.
   - `total`: Total sale amount.
   - `date`: Date of the transaction.
   - `time`: Time of the transaction.
   - `payment`: Payment method used.
   - `cogs`: Cost of goods sold.
   - `gross_margin_pct`: Gross margin percentage.
   - `gross_income`: Gross income from the sale.
   - `rating`: Customer rating for the transaction.

2. Data Cleaning

   The script includes basic data cleaning steps to ensure the dataset is ready for analysis.

## Adding Additional Columns

1. Time of Day

   Adds a column `time_of_day` to categorize the time of transactions into "Morning", "Afternoon", or "Evening".

2. Day Name

   Adds a column `day_name` to capture the name of the day (e.g., Monday, Tuesday).

3. Month Name

   Adds a column `month_name` to capture the name of the month (e.g., January, February).

## Data Analysis Queries

The script includes various SQL queries to analyze the sales data:

### Product Analysis

1. Unique product lines.
2. Top 3 most selling product lines.
3. Total revenue by month.
4. Total revenue by day.
5. Month with the largest COGS (Cost of Goods Sold).
6. Product line with the largest revenue.
7. City with the largest revenue.
8. Product line with the highest average VAT.
9. Product line performance categorized as "Good" or "Bad" based on average sales.
10. Branches selling more products than the average.

### Customer Analysis

1. Unique customer types.
2. Unique payment methods.
3. Most common customer type.
4. Customer type that buys the most.
5. Gender distribution of customers.
6. Gender distribution per branch.
7. Average rating per time of day.
8. Average rating per time of day per branch.
9. Best average ratings by day of the week.
10. Best average ratings by day of the week per branch.

### Sales Analysis

1. Number of sales made in each time of day per weekday.
2. Customer type bringing the most revenue.
3. City with the highest average tax/VAT percent.
4. Customer type paying the most in VAT.

## Usage

To run these SQL scripts, you need a MySQL database setup. Import the dataset into the `sales` table and execute the provided SQL queries to perform the analysis.
