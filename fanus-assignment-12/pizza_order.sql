create table pizza_order (
  pizza_id INT auto_increment primary key,
  order_id int ,
  foreign key (pizza_id) references pizza (pizza_id),
  foreign key (order_id) references `order` (order_id));