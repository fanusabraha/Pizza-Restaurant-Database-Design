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
  
  set foreign_key_checks =0;
  alter table pizza_order drop foreign key 
  `pizza_order_ibfk_2`;
  
  select * from pizza;
  select * from customer_order;
  select * from ordered_pizza;
  
  
  
select * from customer left join ordered_pizza on customer.customer_id= ordered_pizza.customer_id
 left join pizza on ordered_pizza.pizza_id = pizza.pizza_id 
 left join pizza_order on pizza.pizza_id = pizza_order.pizza_id
 left join `order` on pizza_order.order_id = `order`.order_id; 
 