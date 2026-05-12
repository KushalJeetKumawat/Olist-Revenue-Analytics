
-- Top 10 products by number of orders
SELECT p.product_id, COUNT(oi.order_id) AS order_count
FROM products AS p
JOIN order_items AS oi
ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY order_count DESC
LIMIT 10;

-- Top 10 products by revenue
SELECT p.product_id, ROUND(SUM(oi.price),2) AS total_revenue
FROM products AS p
JOIN order_items AS oi
ON p.product_id = oi.product_id
GROUP BY p.product_id
ORDER BY total_revenue DESC
LIMIT 10;

-- Revenue by product category
SELECT p.product_category_name, ROUND(SUM(oi.price),2) AS total_revenue
FROM products AS p
JOIN order_items AS oi
ON p.product_id = oi.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY total_revenue DESC;
 
-- Average price per category
SELECT p.product_category_name, ROUND(AVG(oi.price),2) AS avg_price
FROM products AS p
JOIN order_items AS oi
ON p.product_id = oi.product_id
WHERE p.product_category_name IS NOT NULL
GROUP BY p.product_category_name
ORDER BY avg_price DESC;
