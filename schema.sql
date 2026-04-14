CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  name TEXT,
  email TEXT
  );

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INT,
  order_date TIMESTAP,
  status TEXT
  );

CREATE TABLE order_items (
  item_id SERIAL PRIMARY KEY
  order_id INT,
  product_name TEXT,
  quantity INT,
  price NUMERIC
  );
