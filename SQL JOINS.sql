--This practice examplarily shows how to join different tables using the JOIN syntax to solve problems from related datasets.
--JOINING OF Tables
LEFT, RIGHT, INNER, FULL

--syntax 
SELECT column_names
FROM table1 
{join type} table2
ON table1.col_name = table2.col_name 

	SELECT * FROM Customer

	CREATE Table West_Region AS (SELECT * FROM Customer  WHERE region ='West')
						 
				    SELECT * FROM West_Region

/*JOIN the customer table and the sales table together and form a new table
that iclude names, age, sales and quantity*/

	SELECT customer_name, age, sales, quantity
	FROM Customer
	LEFT JOIN 
	sales
	ON customer.customer_id = sales.customer_id ;

SELECT count(*) FROM sales
SELECT count(*) FROM Customer
--NB; The next table closer or after the join is the basic one that has effect to the join syntax more than the first table

SELECT FROM Customer

/* Right Join the customer table and west region table( in the west region table, we want customer_name and age and in the 
customer table we want, state)*/

-- Assign 'WR' to represent west_region and 'C' to customer data

	SELECT WR.customer_name, WR.age, C.state
	FROM West_Region AS WR
	RIGHT JOIN 
	Customer AS C
	ON WR.customer_id = C.customer_id;

--INNER JOIN
/*From the WR table use customer name and city,then from sales table 
use quantity and sales */

	SELECT * FROM sales
	SELECT * FROM West_Region

	SELECT WR.customer_name, WR.city, S.quantity, S.sales
	FROM West_Region AS WR
	INNER JOIN
	sales AS S
	ON WR.customer_id = S.customer_id;

--FULL JOIN :Basically combines every part of the tables unlinke inner inner join

	SELECT WR.customer_name, WR.city, S.quantity, S.sales
	FROM West_Region AS WR
	FULL JOIN
	sales AS S
	ON WR.customer_id = S.customer_id;