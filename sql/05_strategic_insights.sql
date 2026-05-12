
-- Revenue Concentration (Top 20% customers)
WITH customer_revenue AS(
SELECT 
c.customer_unique_id, SUM(p.payment_value) AS revenue
FROM customers AS c
JOIN orders AS o
ON c.customer_id = o.customer_id
JOIN order_payments p 
ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
),
grouped AS(
SELECT *, NTILE(5) OVER (ORDER BY revenue DESC) AS spend_group
FROM customer_revenue
)
SELECT 
ROUND(SUM(revenue), 2) AS top_20_percent_revenue
FROM grouped
WHERE spend_group = 1;

-- Monthly Growth Percentage
SELECT month, revenue, prev_month_revenue, 
ROUND((revenue-prev_month_revenue)/prev_month_revenue*100,2) AS growth_pct
FROM(
SELECT DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month, 
SUM(op.payment_value) AS revenue,
LAG(SUM(op.payment_value)) OVER(ORDER BY DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m')) AS prev_month_revenue
FROM orders AS o
JOIN order_payments AS op
ON o.order_id = op.order_id
GROUP BY month
) t;

-- Product Revenue Ranking (top 10)
SELECT product_id, ROUND(revenue,2) AS revenue, revenue_rank 
FROM(
SELECT product_id, SUM(price) AS revenue,
RANK() OVER(ORDER BY SUM(price) DESC) AS revenue_rank
FROM order_items
GROUP BY product_id
) t
WHERE revenue_rank <=10;
 
--  Running Total Revenue
SELECT month, ROUND(revenue,2) AS revenue, 
ROUND(SUM(revenue) OVER(ORDER BY month),2) AS running_total 
FROM(
SELECT DATE_FORMAT(o.order_purchase_timestamp,'%Y-%m') AS month, 
SUM(op.payment_value) AS revenue
FROM orders AS o
JOIN order_payments AS op
ON o.order_id = op.order_id
GROUP BY month
) t;
