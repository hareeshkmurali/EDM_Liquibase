--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create the main table to store product information
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2)
);

-- Create the lookup table for categories
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Insert data into the categories lookup table
INSERT INTO categories (category_id, category_name)
VALUES
    (1, 'Electronics'),
    (2, 'Clothing'),
    (3, 'Books'),
    (4, 'Home & Garden');

-- Insert data into the products table with references to the categories lookup table
INSERT INTO products (product_id, product_name, category_id, price)
VALUES
    (101, 'Smartphone', 1, 499.99),
    (102, 'T-Shirt', 2, 29.99),
    (103, 'Novel', 3, 15.99),
    (104, 'Coffee Maker', 4, 79.99);
