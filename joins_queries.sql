
-- joins_queries.sql
-- E-Commerce Dataset: Customers & Orders
-- Author: Vaishnav Gawade
-- Description: Join queries and business analysis

-- STEP 1: Create tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    region VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- STEP 2: INNER JOIN (Orders + Customers)
SELECT o.order_id, c.customer_name, c.region, o.order_amount
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- STEP 3: LEFT JOIN (Customers with no orders)
SELECT c.customer_id, c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- STEP 4: Revenue per customer
SELECT c.customer_name, SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

-- STEP 5: Region-wise sales
SELECT c.region, SUM(o.order_amount) AS region_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region;
