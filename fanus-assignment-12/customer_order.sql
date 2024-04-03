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
  
