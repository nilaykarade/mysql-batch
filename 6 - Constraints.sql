#contraints
#column level constraints - primary key, auto_increament, unique, not null, null
#row level constraints - check, default, enum

create table if not exists student(
student_id int primary key,
student_name varchar(20) not null,
contact_no varchar(10) unique
);

describe student;

insert into student 
values(1,'Liam','9999999999');

select * from student;

insert into student 
values(2,'Amanda','9999999998');

insert into student (student_id,contact_no)
values(3,'9999999988');

insert into student 
values(3,'Barisi','9999999990');

#check 

create table if not exists employee(
id int primary key,
emp_name varchar(20),
emp_age int check(emp_age >18)
);

insert into employee
values (1,'nilay',19);

create table users(
id int,
username varchar(20),
passcode varchar(20) check(length(passcode)>=8)
);

insert into users values(1,'nilay','12345678');


#drop table customers;
create table consumers(
id int,
cust_name varchar(20),
country varchar(20) default 'SA'
);

insert into consumers (id,cust_name) 
values(1, 'nilay');

select * from consumers;

insert into consumers (id,cust_name,country) 
values(2, 'meera', 'Nigeria');

select * from consumers;

#enum
create table students(
student_id int primary key,
course_name enum('Electronic engg','Computer engg','Civil engg'),
contact_no varchar(10) unique
); 

insert into students 
values(1, 'Electrical engg' ,'9999999999');

insert into students 
values(1, 'Computer engg' ,'9999999999');

#Task - create any table with following contraints 
# - check, default, enum


#FOREIGN key

create table if not exists orders(
order_id varchar(100), 
customer_id int ,
product_id int unsigned, 
product_quantity int, 
sale_amount float,
FOREIGN key (customer_id) references customers(customer_id),
FOREIGN key (product_id) references products(product_id)
);    

describe demo_orders;

select CURRENT_TIMESTAMP();


select CURRENT_TIMESTAMP();

select cast(CURRENT_TIMESTAMP()+0 as char);

select concat(cast(CURRENT_TIMESTAMP()+0 as char),'_',1);

#select concat(CONVERT(varchar,CURRENT_TIMESTAMP()+0),'_',12);

drop table orders;

truncate table orders;
############### order table  #####################
insert into orders 
values (concat(2,'_',cast(CURRENT_TIMESTAMP()+0 as char)),2,1,2,600),
(concat(2,'_',cast(CURRENT_TIMESTAMP()+0 as char)),2,2,10,4000),
(concat(2,'_',cast(CURRENT_TIMESTAMP()+0 as char)),2,3,2,900),
(concat(2,'_',cast(CURRENT_TIMESTAMP()+0 as char)),2,10,3,450);    

insert into orders 
values (concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,7,1,220),
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,18,10,600),
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,22,1,389),
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,24,2,420);    

insert into orders 
values (concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,1,2,600),
(concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,3,10,1500),
(concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,14,1,30),
(concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,23,1,170);   

insert into orders 
values 
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,14,1,30),
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,23,1,170),
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,5,1,60),
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,1,2,30);     

insert into orders 
values (concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,1,2,30),
(concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,2,10,4000),
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,3,2,900),
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,10,3,450); 

insert into orders 
values 
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,3,2,900),
(concat(2,'_',cast(CURRENT_TIMESTAMP()+0 as char)),2,10,3,450),    
(concat(1,'_',cast(CURRENT_TIMESTAMP()+0 as char)),1,22,1,389),
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,24,2,420),    
(concat(3,'_',cast(CURRENT_TIMESTAMP()+0 as char)),3,3,10,1500),
(concat(5,'_',cast(CURRENT_TIMESTAMP()+0 as char)),5,14,1,30);

insert into orders 
values 
(concat(4,'_',cast(CURRENT_TIMESTAMP()+0 as char)),4,3,2,900),
(concat(4,'_',cast(CURRENT_TIMESTAMP()+0 as char)),4,10,3,450),    
(concat(4,'_',cast(CURRENT_TIMESTAMP()+0 as char)),4,22,1,389),
(concat(7,'_',cast(CURRENT_TIMESTAMP()+0 as char)),7,24,2,420),    
(concat(7,'_',cast(CURRENT_TIMESTAMP()+0 as char)),7,3,10,1500),
(concat(7,'_',cast(CURRENT_TIMESTAMP()+0 as char)),7,14,1,30);


insert into demo_orders 
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
















    