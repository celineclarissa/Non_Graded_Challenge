-- Non Graded Challenge 5
-- Name: Celine Clarissa
-- Batch: FTDS 006 BSD

-- create customers table
CREATE TABLE customers (
	customer_id serial PRIMARY KEY,
	customer_name VARCHAR(50),
	city VARCHAR(50)
);

-- create orders table
CREATE TABLE orders (
	order_id serial PRIMARY KEY,
	customer_id INTEGER,
	order_date DATE,
	total_amount FLOAT
);

-- insert data to customers table
INSERT INTO customers(customer_name, city)
VALUES
	('John Doe', 'New York'),
	('Jane Smith', 'Los Angeles'),
	('David Johnson', 'Chicago');

-- insert data to orders table
INSERT INTO orders(customer_id, order_date, total_amount)
VALUES
	(1, '2022-01-10', 100.00),
	(1, '2022-02-15', 150.00),
	(2, '2022-03-20', 200.00),
	(3, '2022-04-25', 50.00);

EXPLAIN SELECT customer_name, COUNT(orders.customer_id)
	FROM customers
	JOIN orders
	ON customers.customer_id = orders.customer_id
	WHERE customers.customer_name

alter table customers
	add column total_orders integer

insert into customers(total_orders)
	VALUES (count(select ))
	
drop table customers;
drop table orders
	
SELECT * FROM customers
select * from orders