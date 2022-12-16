use ecom_db;

desc customers;

select * from customers;

#insert coomand - insert into table_name(c1,c2,...) values(v1,v2,...)
insert into customers (
customer_id,
customer_name, 
customer_email, 
customer_mobile_no, 
passcode, 
customer_delivery_address, 
customer_date_joined, 
customer_premium_membership
) 
values (
1,'Nilay','nilay@gmail.com',9999999999,'nilay123','Lagos','2019-08-15',false
);
select * from customers;

insert into customers (
customer_id,
customer_name, 
customer_email, 
customer_mobile_no, 
passcode, 
customer_delivery_address, 
customer_date_joined, 
customer_premium_membership
) 
values (
2,'Joshua','joshua@gmail.com',1999999999,'joshua123','Johannesburg','2020-09-15',true
);

select * from customers;


insert into customers 
values (3,'Thinus','Thinus@gmail.com','Thinus123','2021-09-15',true,2999999999,'Johannesburg');

insert into customers 
values (4,'Xaba','Xaba@gmail.com','Xaba123','2021-09-26',false,3999999999,'Adda'),
(5,'Thebe','Thebe@gmail.com','Thebe123','2020-06-25',true,4999999999,'Adda'),
(6,'Dominic','Dominic@gmail.com','Dominic123','2021-09-05',true,5999999999,'Aberdeen'),
(7,'Joel','Joel@gmail.com','Joel123','2021-08-25',false,6999999999,'Abuja'),
(8,'Tayor','Tayor@gmail.com','Tayor123','2021-09-15',false,7999999999,'Abuja'),
(9,'Micheal','Micheal@gmail.com','Micheal123','2021-09-15',false,8999999999,'Abuja');




insert into customers 
values (10,'Safeeyah','safeeyah@gmail.com','6999999999','safi123', 'Johannesburg', '2019-12-25',true),
(11,'Norman','norman@gmail.com','6699999999','nor123', 'Durban', '2019-12-15',true),
(12,'Ruhlani','ruhlani@gmail.com','6599999999' ,'ruh123','Lagos', '2017-12-25',true),
(13,'Hulisani','hulisani@gmail.com','6999999922', 'Hul123','Durban', '2017-1-25',false),
(14,'Marshal','marshal@gmail.com','6679999999','Mar123' ,'Johannesburg', '2019-12-22',true),
(15,'Precious','precious@gmail.com', '6577999999', 'Pre123','Abuja', '2017-12-25',true);


#DDL command - truncate - deletes all rows from the table

select * from customers;

#truncate - DDL command
truncate table customers;

#update - it ised to update values in the table
select * from customers where customer_id=1;

update customers
set customer_mobile_no='5555555555',customer_delivery_address='Pune' 
where customer_id=1;

# UPDATE address to cape town for customer nilay 
update customers
set customer_delivery_address='Cape Town'
where customer_id=1;

# UPDATE password for customer Thinus

# UPDATE premium membership for customer nilay to true 

# UPDATE joining date for customer nilay to 1st january 2020
 
#delete- it used to delete values from the table

delete from customers
where customer_id=1;

#delete customers from abuja

delete from customers
where customer_delivery_address='Abuja';

select * from customers;

delete from customers;

# execute all insert commands to restore the data


insert into products
values (null, 'Business Shirt', 'Wrinkle-free cotton business shirt', 'Mens clothing', 300),
(null, 'Trousers', 'Black trousers suitable for every business man', 'Mens clothing',400),
(null, 'Jacket', 'Fully lined jacket which is both professional and extremely comfortable to wear', 'Mens clothing', 450 ),
(null, 'Blouse', 'Silk blouse ideal for all business women', 'Womens clothing', 300),
(null, 'Skirt', 'Wrinkle free skirt', 'Womens clothing', 320),
(null, 'Ladies Shoes', 'Low heel and cushioned interior for comfort and style in simple yet elegant shoes', 'Womens clothing',250 ),
(null, 'Belt', 'Leather belt', 'Accessories', 220),
(null, 'Bag', 'Unisex bag suitable for carrying laptops with room for many additional items', 'Accessories', 420),
(null, 'Mens Shoes', 'Leather upper and lower lace up shoes', 'Mens clothing', 365),
(null, 'Wallet', 'Travel wallet suitable for men and women. Several compartments for credit cards, passports and cash', 'Accessories', 150),
(null, 'A4 Paper bundle','A4 Paper 10GSM - 500 pages','Office Consumables',100),
(null, 'Ink cartridge','Ink cartridge for InkJet preinters','Office Consumables',300),
(null, 'Printer toner','Printer toner for Laser Printers','Office Consumables',1000),
(null, 'Wired mouse by XYZ','Wired mouse by XYZ','Computers',30),
(null, 'Wireless mouse by XYZ','Wired mouse by XYZ','Computers',60),
(null, 'Wired keyboard by XYZ','Wired keyboard by XYZ','Computers',80),
(null, 'Wireless keyboard by XYZ','Wired keyboard by XYZ','Computers',160),
(null, 'Pen drive 16GB','Pen drive 16GB by ABC','Computers',60),
(null, 'Pen drive 32GB','Pen drive 32GB by ABC','Computers',80),
(null, 'Pen drive 64GB','Pen drive 64GB by ABC','Computers',100),
(null, 'Pen drive 128GB','Pen drive 128GB by ABC','Computers',120),
(null, 'Dish washing liquid','Dish washing liquid by ABC','Kithen & Home',389),
(null, 'Electric kettle','Electric kettle corless','Kithen & Home',170),
(null, 'Pillows','Set of 2 Pillow by pillows.com','Kithen & Home',210),
(null, 'Floor broom','set of 4 brooms by broom.com','Kithen & Home',200);



truncate table products;
select * from products;



############### order table  #####################
insert into orders 
values (concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,2,600),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,11,10,1000),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,15,2,60),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,3,200);    

insert into orders 
values (concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,1,2,200),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,11,10,1000),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,15,1,60),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,1,2,200);    

insert into orders 
values (concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,1,2,200),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,3,10,450),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,15,1,60),
(concat(15,'_',cast(CURRENT_TIMESTAMP()+0 as char)),15,16,2,80);   

insert into orders 
values (concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,24,3,210),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,13,10,1000),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,15,1,60),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,1,2,200);     

insert into orders 
values (concat(19,'_',cast(CURRENT_TIMESTAMP()+0 as char)),19,1,2,200),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,11,10,1000),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,15,1,60),
(concat(20,'_',cast(CURRENT_TIMESTAMP()+0 as char)),20,1,2,200);    

insert into orders 
values (concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,1,2,200),
(concat(12,'_',cast(CURRENT_TIMESTAMP()+0 as char)),12,11,10,1000),
(concat(13,'_',cast(CURRENT_TIMESTAMP()+0 as char)),13,15,1,60),
(concat(13,'_',cast(CURRENT_TIMESTAMP()+0 as char)),13,1,2,200),
(concat(16,'_',cast(CURRENT_TIMESTAMP()+0 as char)),16,1,2,200),
(concat(11,'_',cast(CURRENT_TIMESTAMP()+0 as char)),11,11,10,1000),
(concat(17,'_',cast(CURRENT_TIMESTAMP()+0 as char)),17,15,1,60),
(concat(17,'_',cast(CURRENT_TIMESTAMP()+0 as char)),17,1,2,200);    

select * from products;







/*

(5,'Thebe','Thebe@gmail.com',4999999999,'Thebe123','Adda','2020-06-25',true),
(6,'Dominic','Dominic@gmail.com',5999999999,'Dominic123','Aberdeen','2021-09-05',true),
(7,'Joel','Joel@gmail.com',6999999999,'Joel123','Abuja','2021-08-25',false),
(8,'Tayor','Tayor@gmail.com',7999999999,'Tayor123','Abuja','2021-09-15',false),
(9,'Micheal','Micheal@gmail.com',8999999999,'Micheal123','Abuja','2021-09-15',false);

*/