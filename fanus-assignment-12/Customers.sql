create table ordered_pizza (
customer_id int,
pizza_id int,
foreign key (customer_id) references customer (customer_id),
foreign key (pizza_id) references pizza(pizza_id));


