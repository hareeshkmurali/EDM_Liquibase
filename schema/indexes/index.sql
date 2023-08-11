--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create an index on the 'emp_id' column in the 'employees' table
CREATE INDEX idx_employees_emp_id ON employees (emp_id);
