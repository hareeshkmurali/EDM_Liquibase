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

