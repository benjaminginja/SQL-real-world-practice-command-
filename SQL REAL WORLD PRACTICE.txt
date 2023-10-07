SQL Queries
THe Queries below solves an intermediate problem, for students database.
These queries cover the creatinf of database, inserting values, use of WHERE, AND, OR, UPDATE, ALTER, 
JOINS and all major SQL staments, functions and syntax.

USE cohort 7B(vephla) Database

SELECT * FROM profile

WHERE country = 'Nigeria'

SELECT * FROM profile
WHERE country = 'Switzerland'


--creating a relational dataset table
CREATE table Customer (customer_id Varchar PRIMARY KEY,
			customer_name Varchar,
			segment varchar,
			Age INT,
			Country varchar,
			city varchar,
			state varchar,
			postal_code INT,
			region varchar)
					  
			SELECT * FROM customer
					 
CREATE table product (product_id text PRIMARY KEY,
			category varchar,
			sub_category varchar,
			product_name text)	
					 
			SELECT * FROM product
	

CREATE table Sales (order_line integer PRIMARY KEY,
		    order_id text,
		    order_date date,
		    ship_date date,
		    ship_mode text,
		    customer_id varchar,
		    product_id text,
		    sales float,
		    quantity integer,
		    discount float,
		    profit float,
		    FOREIGN KEY (customer_id) REFERENCES Customer (customer_id),
		    FOREIGN KEY (product_id) REFERENCES product (product_id)
				   )
                    SELECT * FROM sales
					
--Using a Filtering keyword or command - WHERE
		SELECT customer_name, age, country
		FROM customer 
		WHERE state = 'California' 

--Query out quantities purchased that are more than 10

		SELECT * FROM sales 
		WHERE quantity > 10;

--query out sales id that have profit more than 100 and present it to your bosses

		SELECT order_id 
		FROM sales
		WHERE profit >100;

		SELECT * FROM sales WHERE profit >100;
					 
-- highlight other columns of sales data where discount equals to 0.2


		SELECT * FROM sales WHERE discount = 0.2;

--Using the syntax: highlight the following from the customer, sales and product data
- 1) The customers from texas, ohio, indiana, navada
- 2) the profits above 50,60,80,120
- 3) highlight categories that are furniture, subcategories thare tables

		SELECT * FROM customer

		SELECT * FROM customer WHERE State = 'Texas'

		SELECT customer_name, State 
		FROM customer WHERE State = 'Texas'
		
		SELECT customer_name, State
		FROM customer WHERE State = 'Indiana'

		SELECT customer_name, State
		FROM customer WHERE State = 'Ohio'

		SELECT customer_name, State
		FROM customer WHERE State = 'Nevada'

- 2) Profits above 50,60,80,120

		SELECT * FROM sales 
		WHERE profit > 50 ;

		SELECT * FROM sales 
		WHERE profit > 60 ;

		SELECT * FROM sales 
		WHERE profit > 80 ;

		SELECT * FROM sales 
		WHERE profit > 120 ;

- 3) highlight categories that are furniture, subcategories thare tables

		SELECT * FROM product
		SELECT category, sub_category 
		FROM product
		WHERE category = 'Furniture' AND sub_category = 'Tables' ;

		SELECT * FROM sales 

--OPERATORS 
__ = represents equals to
--"!=" Not equal to

-- AND/OR/NOT Operators

/*The AND operator is a condition whereby we specify two
conditions and it returns true if those two conditions are met*/

	SELECT * FROM customer

	SELECT * FROM Customer 
	WHERE State = 'Florida' AND Segment = 'Consumer'

/* OR operator returns a value where either one of the conditions is met */

	SELECT * FROM Customer
	WHERE City = 'Seattle' OR region = 'West'

/* NOT ; This is used in special instances where it will
be too much work load to extract everybody else , 
the NOT helps to isolate, ensure the NOT comes before the column */

	SELECT * FROM product
	WHERE NOT Category = 'Furniture'

--USING the IN statment
	SELECT * FROM sales

	SELECT * FROM sales 
	WHERE customer_id IN ('CG-12520','DV-13045')

--The 'BETWEEN' statement, helps to return a range of data

	SELECT * FROM sales 
	WHERE sales BETWEEN 100 AND 300

/* Using WILDCARDS; LIKE operator, this is used to select or find a 
little part of something in a query */

--Finding data that begins with and ends with--

	SELECT * FROM customer
	WHERE Customer_name LIKE 'Claire%'

	SELECT * FROM customer
	WHERE Customer_name LIKE 'Pete%'

	SELECT * FROM customer
	WHERE Customer_name LIKE 'Ke%'

--Finding data that has as the second letter in a word --

	SELECT * FROM customer
	WHERE Customer_name LIKE '_r%'

-- Where theres L and atleast 3 characters in a word--

	SELECT * FROM customer
	WHERE city LIKE 'L__%'

--has H in between --
	SELECT * FROM customer
	WHERE Customer_name LIKE '%H%'

--begins with O and ends with H --

	SELECT * FROM customer
	WHERE Customer_name LIKE 'O%n'

--Using the Alias operator 'AS' its used to rename a column--

	SELECT City AS our_city, Age, country
	FROM customer 

	SELECT City FROM customer

	SELECT * FROM customer AS our_customer

	SELECT * FROM customer
	LIMIT 2

