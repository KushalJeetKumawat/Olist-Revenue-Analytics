 -- Total customers 
SELECT COUNT(*) AS total_customers
FROM customers;

-- Total orders
SELECT COUNT(*) AS total_orders
FROM orders;
 
-- Customers who placed orders
SELECT COUNT(DISTINCT c.customer_unique_id) AS ordering_customers
FROM customers AS c
JOIN orders AS o
ON c.customer_id=o.customer_id;

-- Total revenue 
SELECT ROUND(SUM(payment_value),2) AS total_revenue
FROM order_payments;

-- Average Order Value (AOV)
SELECT ROUND(SUM(op.payment_value)/COUNT(DISTINCT o.order_id),2) AS average_order_value
FROM order_payments AS op
JOIN orders AS o
ON op.order_id=o.order_id;

-- Average orders per customer
Select ROUND(AVG(order_count),2) AS avg_orders_per_customer
FROM(
SELECT DISTINCT c.customer_unique_id, COUNT(o.order_id) AS order_count
FROM customers AS c
JOIN orders AS o
ON c.customer_id=o.customer_id
GROUP BY c.customer_unique_id
 ) t;

-- Orders by status
SELECT order_status, COUNT(*) AS orders_count
FROM orders
GROUP BY order_status;

-- Orders by year
SELECT YEAR(order_purchase_timestamp) AS order_year, COUNT(*) AS orders_count
FROM orders
GROUP BY order_year;

-- Total payments
SELECT COUNT(*) AS total_payments
FROM order_payments;

-- Average payment value
SELECT ROUND(AVG(payment_value),2) AS avg_payment_value 
FROM order_payments;
