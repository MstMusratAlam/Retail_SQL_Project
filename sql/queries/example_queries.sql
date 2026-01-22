
SELECT c.customer_id, c.first_name || ' ' || c.last_name AS customer_name,
       o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
ORDER BY o.total_amount DESC
LIMIT 10;

SELECT p.product_id, p.name, SUM(oi.quantity) AS total_qty
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.product_id, p.name
ORDER BY total_qty DESC;

SELECT p.product_id, p.name, i.stock_quantity
FROM products p
JOIN inventory i ON p.product_id = i.product_id
WHERE i.stock_quantity < 10
ORDER BY i.stock_quantity ASC;

SELECT date_trunc('month', order_date) AS month,
       SUM(total_amount) AS revenue,
       COUNT(order_id) AS orders_count
FROM orders
GROUP BY month
ORDER BY month DESC;
