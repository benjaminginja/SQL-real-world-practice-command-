--AGGREGATE FUNTIONS: Practical application
The functions used in this query solves the related vephla database questions.

	SELECT count(order_line) AS Count_of_order_line, count(order_id) AS number_of_order_id 
	FROM sales

	SELECT count(order_line) FROM sales

	SELECT count(*) AS total_count_of_sales 
	FROM sales

	SELECT count(customer_id) AS number_of_customer 
	FROM customer

	SELECT * FROM sales

	SELECT MIN(quantity) AS Least_quantity, MAX(quantity) AS Highest_quantity
	FROM sales

	SELECT AVG(sales) AS average_age_of_sales_2014
	FROM sales 

	SELECT * FROM Customer

	SELECT AVG(age)
	FROM customer

--sum of ages of the customers for the year

	SELECT SUM(age) FROM Customer 

--Further practices to solve problems-
--Total profit made
--Average quantity
--Top 10 customers by profit

	SELECT * FROM sales

	SELECT SUM (profit) AS Total_profit_made
	FROM sales

	SELECT AVG(quantity) FROM sales

	SELECT profit AS Top_10_customers_by_profit FROM sales 
	ORDER BY profit DESC
	LIMIT 10 

	SELECT count (customer_name) AS No_of_customer_in_region,
       count (segment) AS no_of_segment, Region
	FROM Customer
	GROUP BY Region;

--Grouping the customers by  their cities

	SELECT count (customer_name) AS No_of_customer_in_region,
       count (segment) AS no_of_segment, city
	FROM Customer
	GROUP BY city;

	SELECT * FROM sales 
/* Group the sales data by the number of sales by each customer to 
find the best customer of the year*/

	SELECT customer_id, count (customer_id) AS total_purchase, SUM(sales) AS total_money_spent_by_customer
	FROM sales
	GROUP BY Customer_id
	ORDER BY total_money_spent_by_customer DESC

--ORDERING BY by Top 10 

	SELECT customer_id, count (customer_id) AS total_purchase, SUM(sales) AS total_money_spent_by_customer
	FROM sales
	GROUP BY Customer_id
	ORDER BY total_purchase DESC
	LIMIT 10;

	SELECT * FROM Customer
	GROUP BY customer_id
	HAVING age = 44

--FIND the age of customers we have per region that are older than 44
	SELECT * FROM Customer

	SELECT count(customer_name) AS Customers_per_region, AVG(age), region
	FROM Customer
	GROUP BY region

SELECT count(customer_name) AS Customers_per_region, AVG(age), region
	FROM Customer
	GROUP BY region
	HAVING AVG(age) > 44.3

/*Practical use of  the CASE syntax
SELECT *
CASE 
WHEN condition1 THEN result1
WHEN condition2 THEN result2
ELSE Result END as New_col_name 
FROM Table_name */

SELECT * FROM Customer

	SELECT *,
	CASE
	WHEN age <=20 THEN 'Young'
	WHEN age <40 THEN 'Adults' 
	WHEN age<=60 THEN 'Older'   
	ELSE 'aged'

	END as Age_classification
	FROM Customer ;


	SELECT  age,
	CASE
	WHEN age <=20 THEN 'Young'
	WHEN age <40 THEN 'Adults' 
	WHEN age<=60 THEN 'Older'   
	ELSE 'Aged'

	END as Age_classification
	FROM Customer ;

/*Apend a new column that shows if profit made by the 
organization done by each cutomer is above average or not */

	SELECT * FROM sales
	SELECT AVG(sales) FROM sales 

	SELECT *,
	CASE 
	WHEN sales > 229.85 THEN 'Yes'
	ELSE 'No'

	END AS sales_above_average_or_Not
	FROM sales;

