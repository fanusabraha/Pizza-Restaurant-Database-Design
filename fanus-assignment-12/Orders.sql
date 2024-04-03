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
  