
--- QUERY 1:TOTAL SALES BY DATE
SELECT
o.order_date,
COUNT(DISTINCT o.order_id) AS total_orders,
SUM(od.quantity * m.price) AS total_revenue
FROM orders o
JOIN order_details od ON o.order_id = od.order_id
JOIN menu_items m ON od.item_id = m.item_id
GROUP BY o.order_date
ORDER BY o.order_date;

---QUERY 2 Revenue by Menu Category
SELECT 
m.category,
COUNT(od.detail_id) AS total_items_sold,
SUM(od.quantity * m.price) AS total_revenue
FROM Menu_items m
JOIN order_details od ON m.item_id = od.item_id
GROUP BY m.category 
ORDER BY total_revenue DESC;





---QUERY 3;Top performing staff
SELECT 
o.[staff_number],
COUNT(DISTINCT o.[order_id]) AS total_orders,
SUM(od.quantity * m.price) AS total_revenue
FROM Orders o
JOIN order_details od ON o.[order_id] = od.order_id
JOIN Menu_items m ON od.item_id = m.item_id
GROUP BY o.[staff_number]
ORDER BY total_revenue DESC;



--Query 4; Peak Hours for Orders
SELECT
DATEPART(HOUR,o.[order_time]) AS hour_of_day,
COUNT(DISTINCT o.[order_id]) AS total_orders,
SUM(od.quantity * m.price) AS total_revenue
FROM Orders o
JOIN order_details od ON o.[order_id] = od.order_id
JOIN Menu_items m ON od.item_id= m.item_id
GROUP BY DATEPART(HOUR,[order_time])
ORDER BY total_orders desc;


---Most 5: Most & Least Popular Items
SELECT 
m.item_name,
m.category,
SUM(od.quantity) AS total_quantity_sold,
SUM(od.quantity * m.price) AS total_revenue
FROM Menu_items m
JOIN order_details od ON m.item_id =od.item_id
GROUP BY m.item_name, m.category
ORDER BY total_quantity_sold DESC;


-- Query 6; Average Ordervalue
SELECT
COUNT(DISTINCT o.[order_id]) AS total_orders,
SUM(od.quantity * m.price) AS total_revenue,
SUM(od.quantity * m.price) / COUNT(DISTINCT o.[order_id]) as avg_order_value
FROM Orders o
JOIN order_details od ON o.[order_id] = od.order_id
JOIN Menu_items m ON od.item_id = m.item_id;










