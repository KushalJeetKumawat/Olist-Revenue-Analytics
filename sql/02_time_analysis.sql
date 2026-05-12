
-- Orders per month
SELECT DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
COUNT(*) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;

-- Revenue per month
SELECT DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS order_month, 
ROUND(SUM(op.payment_value),2) AS total_revenue
FROM orders AS o
JOIN order_payments AS op
ON o.order_id=op.order_id
GROUP BY order_month
ORDER BY order_month;

-- AOV per month 
SELECT 
DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS order_month,
ROUND(SUM(op.payment_value)/COUNT(DISTINCT o.order_id),2) AS avg_order_value
FROM orders AS o
JOIN order_payments AS op
ON o.order_id = op.order_id
GROUP BY order_month
ORDER BY order_month;
