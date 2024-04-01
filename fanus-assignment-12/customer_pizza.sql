create table ordered_pizza (
customer_id int,
pizza_id int,
quantity int,
foreign key (customer_id) references customer (customer_id),
foreign key (pizza_id) references pizza(pizza_id));


-- alter table ordered_pizza add column  order_id int ;
delete from ordered_pizza where customer_id = 2; 

-- for trevor_page 
insert into ordered_pizza (customer_id, pizza_id, quantity, order_id) values (1,1,1,1), (1,3,1,1);
insert into ordered_pizza (customer_id, pizza_id, quantity, order_id) values (1,3,1,3), (1,4,1,3);

-- for john_doe
insert into ordered_pizza (customer_id, pizza_id, quantity, order_id) values (2,2,1,2), (2,3,2,2);
insert into ordered_pizza (customer_id, pizza_id, quantity, order_id) values (2,2,3,4), (2,4,1,4);

-- alter table customer_pizza add foreign key (customer_name) references customer (name);

select * from ordered_pizza;
select * from customer;
select * from pizza;

select * from customer left join ordered_pizza on customer.customer_id= ordered_pizza.customer_id
 left join pizza on ordered_pizza.pizza_id = pizza.pizza_id
 left join `order` on  `order`.customer_id = customer.customer_id;
 
 