create table ordered_pizza (
customer_id int,
pizza_id int,
quantity int,
foreign key (customer_id) references customer (customer_id),
foreign key (pizza_id) references pizza(pizza_id));

alter table ordered_pizza add column order_id int;

select * from ordered_pizza;
select * from customer;
select * from pizza;

select * from customer left join ordered_pizza on customer.customer_id= ordered_pizza.customer_id left join pizza on ordered_pizza.pizza_id = pizza.pizza_id;