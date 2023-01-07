


/*
order_id - customer_id & date-time = 1_23092022222544
									 1_2409.....
									 2_23092022222544
*/

desc products;

select * from orders;

select count(*) from orders;

select orders.order_id, customers.customer_name
from customers
inner join orders
on customers.customer_id=orders.customer_id;

select orders.order_id, customers.customer_name,customers.customer_delivery_address
from customers
inner join orders
on customers.customer_id=orders.customer_id;

select orders.order_id, customers.customer_name,
products.product_name, orders.sale_amount,
customers.customer_delivery_address
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id;

select orders.order_id, customers.customer_name,
products.product_name,products.unit_price,orders.product_quantity, orders.sale_amount,
customers.customer_delivery_address
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id;

select orders.order_id, customers.customer_name,
products.product_name,orders.sale_amount,
customers.customer_delivery_address
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_delivery_address='Abuja';

select orders.order_id, customers.customer_name,
products.product_name,orders.sale_amount,
customers.customer_delivery_address
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_name='Nilay';

select customers.customer_name,sum(orders.sale_amount)
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_name='Nilay';

select orders.order_id, customers.customer_name,sum(orders.sale_amount)
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_name='Nilay'
group by orders.order_id;

select orders.order_id, customers.customer_name,
sum(orders.sale_amount)
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
group by orders.order_id;



select distinct(orders.order_id), customers.customer_name
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_name='Nilay';


select count(distinct(orders.order_id)), customers.customer_name
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
where customers.customer_name='Nilay';

select count(distinct(orders.order_id)), customers.customer_name
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
group by customers.customer_id;

select count(distinct(orders.order_id)), customers.customer_name,customers.customer_delivery_address
from customers
inner join orders on customers.customer_id=orders.customer_id
inner join products on products.product_id=orders.product_id
group by customers.customer_id
order by customers.customer_delivery_address;


select customers.customer_name,orders.order_id
from customers
left join orders
on customers.customer_id=orders.customer_id;


select customers.customer_name,orders.order_id
from customers
right join orders
on customers.customer_id=orders.customer_id;



select count(orders.order_id)
from orders;

select count(customers.customer_id)
from customers;


select count(orders.order_id)
from customers
cross join orders
on customers.customer_id=orders.customer_id;

select count(orders.order_id)
from customers
cross join orders;
