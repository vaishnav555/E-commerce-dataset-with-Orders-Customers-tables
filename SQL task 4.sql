CREATE DATABASE CustomerS;
USE CUSTOMERS;

-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100),
    email VARCHAR(100),
    region VARCHAR(50),
    signup_date DATE
);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    order_amount DECIMAL(10,2),
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- INNER JOIN – Orders with Customer Details (Combine order information with customer details.)
SELECT 
    o.order_id,
    c.customer_name,
    c.region,
    o.order_date,
    o.order_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

-- Validation
SELECT COUNT(*) FROM orders;

-- LEFT JOIN – Customers Who Never Placed Orders. (Identify customers with no purchases (important for marketing)
SELECT 
    c.customer_id,
    c.customer_name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Revenue Analysis (Orders Table)
-- Calculate total revenue per customer.
SELECT 
    c.customer_name,
    SUM(o.order_amount) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_revenue DESC;

-- Region-wise Revenue
-- Understand sales performance by region.
SELECT 
    c.region,
    SUM(o.order_amount) AS region_sales
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
GROUP BY c.region;

-- Business Question Using WHERE
-- “Sales in Region X between Date Y and Z”
SELECT 
    c.region,
    SUM(o.order_amount) AS total_sales
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.region = 'North'
AND o.order_date BETWEEN '2024-01-01' AND '2024-03-31'
GROUP BY c.region
;








