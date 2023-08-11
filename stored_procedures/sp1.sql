--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create a stored procedure to get employee details by ID
CREATE PROCEDURE sp_GetEmployeeByID
    @emp_id INT
AS
BEGIN
    SELECT *
    FROM employees
    WHERE emp_id = @emp_id;
END;
