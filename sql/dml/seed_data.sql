
INSERT INTO customers (first_name, last_name, email, phone)
VALUES
('Alice','Johnson','alice.johnson@example.com','+1-555-0100'),
('Bob','Smith','bob.smith@example.com','+1-555-0101'),
('Carol','Lee','carol.lee@example.com','+1-555-0102');


INSERT INTO products (sku, name, category, price)
VALUES
('SKU-1001','T-Shirt - Blue','Apparel',19.99),
('SKU-1002','Sneakers Model A','Footwear',79.99),
('SKU-1003','Coffee Mug','Home',9.50);


INSERT INTO inventory (product_id, stock_quantity, last_restocked)
SELECT product_id, CASE product_id WHEN 1 THEN 50 WHEN 2 THEN 20 ELSE 100 END, NOW() FROM products;


INSERT INTO orders (customer_id, order_date, status) VALUES (1, NOW()-INTERVAL '10 days', 'completed');
INSERT INTO orders (customer_id, order_date, status) VALUES (2, NOW()-INTERVAL '3 days', 'completed');


INSERT INTO order_items (order_id, product_id, quantity, unit_price, line_total)
VALUES
(1, 1, 2, 19.99, 2 * 19.99),
(1, 3, 1, 9.50, 1 * 9.50),
(2, 2, 1, 79.99, 1 * 79.99);

