CREATE TABLE `pizza` (
   `pizza_id` int auto_increment primary key,	
  `name` VARCHAR(40) NOT NULL,
  `price` DECIMAL(4,2) NOT NULL);
  
insert into pizza (name, price)
values ( 'Pepperoni_Cheese', 7.99), 
		('vegetarian', 7.99), 
        ( 'Meat_lovers', 14.99), 
        ('Hawaiian', 12.99);
