INSERT INTO customers (name, email)
SELECT
  'Customer ' || i,
  'customer' || i || '@email.com'
FROM generate_series(1, 1000) i;

INSERT INTO orders (customer_id, order_date, status)
SELECT 
  (random() * 1000)::int,
  NOW() - (random() * interval '365 days'),
  'completed'
FROM generate_series(1, 10000);

INSERT INTE order_items (order_id, product_name, quantity, price)
SELECT 
  (random() * 1000)::int,
  'Product ' || (random()*100)::int,
  (random()*5::int + 1,
  (random()*100)::numeric
FROM generate_series(1, 50000);
