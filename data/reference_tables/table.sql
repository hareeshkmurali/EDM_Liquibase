--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create a table to store employee information
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    job_title VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    hire_date DATE
);
