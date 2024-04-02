create table ordered_pizza (
order_id int,
pizza_id int,
foreign key (order_id) references `order` (order_id),
foreign key (pizza_id) references pizza(pizza_id));


-- alter table ordered_pizza add column  order_id int ;
delete from ordered_pizza where customer_id = 2; 

-- trevor page order pizzas
insert into ordered_pizza (order_id, pizza_id) values (1,1), (2,3);

-- john doe order pizzas
insert into ordered_pizza (order_id, pizza_id) values (3,2), (4,3), (5,3);

-- trevor page order pizzas second order
insert into ordered_pizza (order_id, pizza_id) values (6,3), (7,4);

-- john doe order pizzas second order
insert into ordered_pizza (order_id, pizza_id) values (8,2), (9,2), (10,2), (11,4);

select * from ordered_pizza;
select * from customer;
select * from pizza;

select c.name as customer_name, sum(p.price)  as total_price from customer c
join customer_order co on c.customer_id= co.customer_id
join `order` o on o.order_id = co.order_id
join ordered_pizza op on op.order_id = o.order_id
join pizza p on op.pizza_id = p.pizza_id
group by c.name;

select * from customer c
join customer_order co on c.customer_id= co.customer_id
join `order` o on o.order_id = co.order_id
join ordered_pizza op on op.order_id = o.order_id
join pizza p on op.pizza_id = p.pizza_id;



select * from customer left join customer_order on customer.customer_id= customer_order.customer_id
left join `order` on `order`.order_id = customer_order.order_id
left join ordered_pizza on ordered_pizza.order_id = `order`.order_id
 left join pizza on ordered_pizza.pizza_id = pizza.pizza_id;
 
 