EXPLAIN ANALYZE
SELECT
  c.name,
  SUM(oi.quantity * oi.price) as total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.name
ORDER BY total_spent DESC;
