-- 1. get all customers and their addresses
SELECT * FROM customers
JOIN addresses ON customers.id = addresses.customer_id

--2. Get all orders and their line items
SELECT * FROM orders
JOIN line_items ON orders.id = line_items.order_id

--3. which warehouses have cheetohs?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'cheetos'

--4. which warehouses have pepsi?
SELECT * FROM warehouse
JOIN warehouse_product ON warehouse.id = warehouse_product.warehouse_id
JOIN products ON warehouse_product.product_id = products.id
WHERE products.description = 'diet pepsi'

--5. number of orders for each customer
SELECT COUNT(orders.*), customers.first_name
FROM customers
JOIN addresses on customers.id = addresses.customer_id
JOIN orders on addresses.id = orders.address_id
GROUP BY customers.first_name

--6. # of customers
SELECT COUNT (*) FROM customers

--7. # of products
SELECT COUNT (*) FROM customers

--8. amount of onhand diet pepsi
SELECT SUM(on_hand) FROM products
JOIN warehouse_product ON products.id = warehouse_product.product_id
WHERE products.description = 'diet pepsi'
