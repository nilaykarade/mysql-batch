/*
Clauses - MySQL system clauses are keywords or statements to handle information. 
It helps to operate a group of the data and apply it to require conditions. 
The clauses apply conditions or select patterns to get information.
*/

/*
 From clause - The MySQL FROM Clause is used to select some records from a table.
 It can also be used to retrieve records from multiple tables using JOIN condition.
*/

#shows data for one column
select customer_name from customers;

#shows data for multiple columns of your intrest
select customer_name, customer_delivery_address from customers;

#shows data for all columns
select * from customers;

/*
where clause - MySQL WHERE Clause is used with SELECT, INSERT, UPDATE 
and DELETE to filter the results. 

It specifies a specific position where you have to do the operation.
*/

select * from customers;

select * from customers 
where customer_delivery_address='Abuja';

desc customers; 

select * from customers 
where customer_date_joined='2020-09-15';

#MySQL ORDER BY Clause
#The MYSQL ORDER BY Clause is used to sort the records in ascending or descending order.
/*
Syntax:
SELECT expressions  
FROM tables  
[WHERE conditions]  
ORDER BY expression [ ASC | DESC ];
*/
select *  from customers;

select *  from customers 
order by customer_delivery_address;

select *  from customers 
order by customer_premium_membership;

select customer_name from customers
order by customer_name; 

select customer_name from customers
order by customer_name desc; 

select product_name,unit_price  from products;

#Task - list of product name, their price, ordered by product price
select product_name,unit_price  from products 
order by unit_price;

select product_name,unit_price  from products 
order by unit_price desc;

#Task - list of product name, their price, ordered by product price in descending

select *  from customers 
where customer_premium_membership=1;

select *  from customers 
where customer_premium_membership=1 
order by customer_delivery_address ;

select *  from products;

select product_name,unit_price, product_category from products
where product_category="Computers";

select product_name,unit_price, product_category  from products
where product_category="Computers" 
order by unit_price;

select product_name,unit_price, product_category  
from products;

select product_name,unit_price, product_category  
from products
order by product_category;

select product_name,unit_price, product_category  from products
order by product_category,unit_price;

select product_name,unit_price, product_category  from products
order by product_category,product_name;

#task - show product name, product category, unit price  and order them by 
#unit price in descending order

/*
Distinct clause - MySQL DISTINCT clause is used to remove 
duplicate records from the table and fetch only the unique records. 
The DISTINCT clause is only used with the SELECT statement.
*/

select customer_delivery_address   
from customers;  

select distinct customer_delivery_address   
from customers;  
#Task - show disctinct product categories from products table
select product_category from products;

select distinct product_category from products;
 
select distinct customer_delivery_address   
from customers  
order by customer_delivery_address;

#select count(distinct product_category) from products;

/*
Group by clause - The MYSQL GROUP BY Clause is used to collect data 
from multiple records and group the result by one or more column. 

It is generally used in a SELECT statement.

You can also use some aggregate functions like 
COUNT, SUM, MIN, MAX, AVG etc. on the grouped column.
*/


