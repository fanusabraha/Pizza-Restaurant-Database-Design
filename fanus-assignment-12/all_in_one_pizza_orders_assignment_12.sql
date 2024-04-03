create database pizza_database;

create table ordered_pizza (
customer_id int auto_increment primary key,
`name` varchar(40),
phone_number double);

----------------------------------------------------------------------

create table customer_order (
  customer_id INT auto_increment ,
  order_id int primary key ,
  foreign key (customer_id) references customer(customer_id),
  foreign key (order_id) references `order` (order_id));
  
-- trevor page order pizzas on the first order
  insert into customer_order (customer_id, order_id) values (1,1), (1,2);
  
-- john doe order pizzas on the first order
  insert into customer_order (customer_id, order_id) values (2,3), (2,4), (2,5);
  
  -- trevor page order pizzas on the second order
  insert into customer_order (customer_id, order_id) values (1,6), (1,7);
  
  -- john doe order pizzas on the first order
  insert into customer_order (customer_id, order_id) values (2,8), (2,9), (2,10), (2,11);
  
----------------------------------------------------------------------

  CREATE TABLE `order` (
  `order_id` INT auto_increment primary key,
  `order_date` datetime );

-- first order
insert into `order` ( order_id, order_date) 
values (1,'2023-09-10 9:47:00'),(2,'2023-09-10 9:47:00');
-- second order
insert into `order` ( order_id, order_date) 
values (3,'2023-09-10 13:20:00'), (4,'2023-09-10 13:20:00'), (5,'2023-09-10 13:20:00');
-- third order
insert into `order` ( order_id, order_date) 
values (6,'2023-09-10 9:47:00'),(7,'2023-09-10 9:47:00');
-- fourth order
insert into `order` ( order_id, order_date) 
values (8,'2023-10-10 10:37:00'), (9,'2023-10-10 10:37:00'), (10,'2023-10-10 10:37:00'), (11,'2023-10-10 10:37:00');

----------------------------------------------------------------------

create table ordered_pizza (
order_id int,
pizza_id int,
foreign key (order_id) references `order` (order_id),
foreign key (pizza_id) references pizza(pizza_id));

-- trevor page order pizzas
insert into ordered_pizza (order_id, pizza_id) values (1,1), (2,3);

-- john doe order pizzas
insert into ordered_pizza (order_id, pizza_id) values (3,2), (4,3), (5,3);

-- trevor page order pizzas second order
insert into ordered_pizza (order_id, pizza_id) values (6,3), (7,4);

-- john doe order pizzas second order
insert into ordered_pizza (order_id, pizza_id) values (8,2), (9,2), (10,2), (11,4);

----------------------------------------------------------------------

CREATE TABLE `pizza` (
   `pizza_id` int auto_increment primary key,	
  `name` VARCHAR(40) NOT NULL,
  `price` DECIMAL(4,2) NOT NULL);
  
insert into pizza (name, price)
values ( 'Pepperoni_Cheese', 7.99), 
		('vegetarian', 7.99), 
        ( 'Meat_lovers', 14.99), 
        ('Hawaiian', 12.99);

----------------------------------------------------------------------

-- final result
select * from customer c
join customer_order co on c.customer_id= co.customer_id
join `order` o on o.order_id = co.order_id
join ordered_pizza op on op.order_id = o.order_id
join pizza p on op.pizza_id = p.pizza_id;

-- Q4 calculating every customers price
select c.name as customer_name, sum(p.price)  as total_price from customer c
join customer_order co on c.customer_id= co.customer_id
join `order` o on o.order_id = co.order_id
join ordered_pizza op on op.order_id = o.order_id
join pizza p on op.pizza_id = p.pizza_id
group by c.name;

-- Q5 calculating daily prices
select c.name as customer_name, date(o.order_date) as Date_of_order, sum(p.price)  as total_price from customer c
join customer_order co on c.customer_id= co.customer_id
join `order` o on o.order_id = co.order_id
join ordered_pizza op on op.order_id = o.order_id
join pizza p on op.pizza_id = p.pizza_id
group by c.name, o.order_date ;

 