# Pizza Restaurant Database Design 

## Overview
This assignment focuses on designing a database schema for a pizza restaurant. The database will track customers, orders, and the pizzas in each order. By the end, you'll create the schema in MySQL, populate it with sample data, and write queries for insightful reporting.

---

## Objectives
1. **Database Design:**  
   - Apply normalization techniques and relationships (1-to-1, 1-to-many, many-to-many).  
   - Create a schema with tables for customers, orders, and pizzas, including join tables for many-to-many relationships.

2. **MySQL Implementation:**  
   - Translate the schema design into a MySQL script.  
   - Ensure the script is re-runnable using `IF EXISTS`.

3. **Data Population:**  
   - Insert sample data into the tables to mimic real orders.

4. **SQL Querying:**  
   - Calculate total spending by each customer.  
   - Break down spending by customer and order date.

---

## Key Steps
### 1. **Schema Design**
- **Tables:**  
  - **Customers:** Stores customer name and phone number.  
  - **Orders:** Stores order details, including date and time.  
  - **Pizzas:** Lists pizza types and prices.  
  - **Order_Pizzas:** Join table linking orders and pizzas to track quantities.

### 2. **MySQL Script**
- Create tables with relationships.  
- Use `IF EXISTS` to allow script re-runs.  
- Example snippet:  
  ```sql
  DROP TABLE IF EXISTS customers;
  CREATE TABLE customers (
      id INT AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(255),
      phone VARCHAR(15)
  );
  ```

### 3. **Populate Data**
- Insert customers, orders, and pizzas with SQL commands.
- Example:
  ```sql
  INSERT INTO customers (name, phone) VALUES ('Trevor Page', '226-555-4982');
  ```

### 4. **Write Queries**
- **Q4:** Total spending by each customer:  
  ```sql
  SELECT c.name, SUM(p.price * op.quantity) AS total_spent
  FROM customers c
  JOIN orders o ON c.id = o.customer_id
  JOIN order_pizzas op ON o.id = op.order_id
  JOIN pizzas p ON op.pizza_id = p.id
  GROUP BY c.name;
  ```

- **Q5:** Spending by customer and date:  
  ```sql
  SELECT c.name, DATE(o.order_date) AS order_date, SUM(p.price * op.quantity) AS total_spent
  FROM customers c
  JOIN orders o ON c.id = o.customer_id
  JOIN order_pizzas op ON o.id = op.order_id
  JOIN pizzas p ON op.pizza_id = p.id
  GROUP BY c.name, DATE(o.order_date);
  ```

---

## Learning Outcomes
- **Normalization:** Breaking down data to avoid redundancy.  
- **Relationships:** Managing 1-to-many and many-to-many relations with join tables.  
- **SQL Scripting:** Writing reusable database scripts.  
- **Querying:** Extracting actionable insights with SQL.

---

## Bonus Challenge
- **Dynamic Pricing:** Add columns for promotional discounts and calculate the adjusted spending in queries.
