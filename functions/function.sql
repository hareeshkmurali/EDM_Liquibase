--liquibase formatted sql
--changeset hareesh:3 runOnChange:true stripComments:false
--comment comment2

-- Create a function to calculate the total price of products in a category
;CREATE FUNCTION CalculateTotalPriceByCategory(category_id INT)
RETURNS DECIMAL(10, 2)
BEGIN
    DECLARE total_price DECIMAL(10, 2);
    
    SELECT SUM(price) INTO total_price
    FROM products
    WHERE category_id = category_id;
    
    RETURN total_price;
END
