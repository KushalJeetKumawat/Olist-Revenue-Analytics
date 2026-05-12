
-- Percentage of customers who placed orders
SELECT ROUND(COUNT(DISTINCT o.customer_id)*100.0/COUNT(DISTINCT c.customer_id),2) AS pct_customers_ordered
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id=o.customer_id;

-- Repeat vs One-time customers
SELECT
SUM(CASE WHEN order_count=1 THEN 1 ELSE 0 END) AS onetime_customers,
SUM(CASE WHEN order_count>1 THEN 1 ELSE 0 END) AS repeat_customers,
COUNT(*) AS total_ordering_customers 
FROM
(SELECT c.customer_unique_id, COUNT(o.order_id) AS order_count
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.customer_unique_id
) t;
