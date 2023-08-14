--liquibase formatted sql
--changeset Hareesh:1 runOnChange:true stripComments:false
--comment table for products

-- Create the main table to store product information
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2)
)
