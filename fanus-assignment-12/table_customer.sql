create database pizza_database;
CREATE TABLE `customer` (
`customer_id` int auto_increment primary key,
  `name` VARCHAR(40) NOT NULL,
  `phone_number` double NOT NULL);

  select * from customer; 
 
 insert into customer (customer_id, name, phone_number)
 values (1, 'Trevor_Page ', 2265554982), (2, 'John_Doe', 5555559498);