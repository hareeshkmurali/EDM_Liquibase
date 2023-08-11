--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create a view to retrieve employee details for a specific department
CREATE VIEW vw_EmployeesByDepartment AS
SELECT emp_id, first_name, last_name, department
FROM employees
WHERE department = 'HR';
