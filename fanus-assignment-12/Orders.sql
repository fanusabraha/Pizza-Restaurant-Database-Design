CREATE TABLE `order` (
  `order_id` INT auto_increment primary key,
  `order_date` datetime ,
  foreign key (customer_id) references customer (customer_id));

insert into `order` ( customer_id, order_date) 
values (1,'2023-09-10 9:47:00');
  
select * from `order`;