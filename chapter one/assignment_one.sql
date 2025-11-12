
-- CREATE DATABASE ecommerce_db;
-- CREATE TABLE users(
	-- user_id int,
    -- PRIMARY KEY(user_id)
    -- full_name VARCHAR(150),
    -- email VARCHAR(150) UNIQUE,
    -- phone VARCHAR(30)
-- );

-- CREATE TABLE products(
	-- product_id int,
    -- PRIMARY KEY(product_id),
    -- product_name VARCHAR(255),
    -- description TEXT,
    -- price NUMERIC(12,1)
-- );

CREATE TABLE orders(
	order_id int,
    PRIMARY KEY(order_id),
    product_id int,
    unit_price NUMERIC(12,2),
    quantity int
);
