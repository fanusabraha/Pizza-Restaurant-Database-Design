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

 