/*

MySQL's aggregate function is used to perform calculations on 
multiple values and return the result in a single value like the average of all values, 
the sum of all values, and maximum & minimum value among certain groups of values. 

We mostly use the aggregate functions with SELECT statements
in the data query languages.

*/

# count

select * from customers;

select count(*) from customers;

select count(*) from products;

select count(*) as 'count of customers' from customers;

#task - print count of products from product table

select count(customer_name) as 'count of customers' from customers;

select count(customer_name) as 'count of customers'
from customers
where customer_delivery_address='Johannesburg';

#Task - find count of customers from Abuja


describe products;

select product_name from products;

select product_category from products;

select count(*) from products
where product_category ='Computers';

select product_category , count(*) from products
where product_category ='Computers';

select product_category ,count(*) from products
where product_category ='Kithen & Home';

select product_category
from products; 

select distinct product_category from products; 

select count(distinct product_category) from products; 

select distinct customer_delivery_address from customers; 

select count(distinct customer_delivery_address) from customers; 

select count(distinct customer_delivery_address)  as  city_count from customers; 


select customer_delivery_address from customers;

select customer_delivery_address 
from customers
group by customer_delivery_address;


select distinct customer_delivery_address from customers;

select customer_delivery_address, count(*) 
from customers
group by customer_delivery_address;

select product_category, count(*) 
from products
group by product_category;


select product_category, count(*) as product_count
from products
where unit_price>=100
group by product_category;

select product_category, count(*) as product_count
from products
where unit_price>=100 and (product_category in ('Office Consumables','Kithen & Home'))
group by product_category;

select product_category, count(*) as product_count
from products
group by product_category;


select product_category, count(*) as product_count
from products
group by product_category
having count(*)>3;

select product_category, count(*) as product_count
from products
group by product_category
having count(*)>3
order by count(*);

select product_category, count(*) as product_count
from products
group by product_category
having count(*)>3
order by product_category;

#sum()

select * from products;

select sum(unit_price) from products;

select sum(unit_price) 
from products
where product_category='computers';

select product_category, sum(unit_price) 
from products
group by product_category;

#avg

select avg(unit_price) from products;

select avg(unit_price) 
from products
where product_category='computers';

select product_category, avg(unit_price) 
from products
group by product_category;

#max()

select max(unit_price) from products;

select product_name, max(unit_price) from products;

##########
select product_name, max(unit_price) 
from products
group by product_category='computers';

select max(unit_price) 
from products
group by product_category;

select product_name, product_category,unit_price
from products
where unit_price=(select max(unit_price) from products);

select product_name, product_category,unit_price
from products
where unit_price=(select max(unit_price) from products);



#min()

select min(unit_price) from products;

select product_category,  min(unit_price) 
from products
group by product_category;

#limit

select * from products limit 5;

select * from customers limit 5;

















