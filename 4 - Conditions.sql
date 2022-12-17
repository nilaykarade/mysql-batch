
/*
Conditions - The MySQL conditions are used to add one or more conditions 
in a SELECT, INSERT, UPDATE, or DELETE statement
*/

/*
T and T = T , otherwise F
F or F = F, ohterwise T

x=10
y=11

if x==10 and y==11:
	print("YOOOOO")
else:
	print("NOOOO")
    
*/
    
    
    
    
select * from customers; 

select * from customers 
where customer_delivery_address='Adda';

select * from customers 
where customer_delivery_address='Adda' 
and customer_premium_membership=true;

#get customers from 2 cities
select * from customers 
where customer_delivery_address='Johannesburg' 
and customer_delivery_address='Abuja';

#get customers from either of 2 cities
select * from customers 
where customer_delivery_address='Johannesburg' 
or customer_delivery_address='Abuja';

#task - list of products having product category as 
#computers or accessories 

select * from customers 
where customer_delivery_address='Johannesburg' 
or customer_delivery_address='Abuja' 
order by customer_name;

#task - list of products having product category as computers or
#accessories and then order them by price

select * from customers 
where  customer_premium_membership=true 
and (customer_delivery_address='Adda' or customer_delivery_address='Abuja');

describe products;

# relational operators : <,>,<=,>=,!=,==
select * from products 
where unit_price=100;

select product_name, unit_price from products where unit_price!=100;

select product_name, unit_price from products where unit_price<>100;

select product_name, unit_price from products where unit_price<=100;

select product_name, unit_price from products where unit_price<=100
order by unit_price desc;

select * from products 
where unit_price>100 and unit_price<=200;

select * from products 
where unit_price>100 and unit_price<=200 and product_category='Computers';

#comparing strings, = compares the entire string while LIKE compares one character at a time. 

select * from products 
where product_category like 'computers';

select * from products 
where unit_price>100 and product_category like 'computers';

#Task - show list of products having unit price less than 200 and 
# category is kitchen and home

#wildcard characters

select * from customers 
where customer_delivery_address like 'a%';

select * from customers 
where customer_name like 'm%';

select * from products 
where product_name like 'm%';

select * from customers 
where customer_delivery_address like 'ab%';

select * from customers 
where customer_delivery_address like '%g';

select * from customers 
where customer_delivery_address like '%o%';

select * from customers 
where customer_delivery_address like '%oh%';

select * from customers 
where customer_delivery_address like '_b%';


select * from customers 
where customer_delivery_address like '__u%';

select * from customers 
where (customer_delivery_address like 'j%' ) 
or  (customer_delivery_address like 'a%' );

select * from customers 
where (customer_delivery_address like 'j%' ) 
or  (customer_delivery_address like 'a%' ) 
order by customer_delivery_address;

select * from customers 
where (customer_delivery_address like 'j%' ) 
or  (customer_delivery_address like 'a%' ) 
order by customer_name;

select * from customers 
where (customer_delivery_address like 'Pune') 
or (customer_delivery_address like 'Adda') 
or (customer_delivery_address like 'Abuja');

select * from customers 
where customer_delivery_address in ('Pune','Adda','Abuja');

#Task - list prducts from accessories, mens clothing, women clothing using in 

select distinct product_category from products;

select * from products 
where product_category in  ('Computers','Office consumables');

select * from products 
where product_category  in  ('Computers','Office consumables') 
and unit_price<150;

select * from products 
where product_category in  ('Computers','Office consumables') 
and unit_price<150 
order by unit_price;
