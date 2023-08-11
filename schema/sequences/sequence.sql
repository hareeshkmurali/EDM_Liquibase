--liquibase formatted sql
--changeset AUTHOR:CHANGESET_NAME runOnChange:true stripComments:false
--comment OPTIONAL COMMENT

-- Create a sequence named "seq_employee_id"
CREATE SEQUENCE seq_employee_id
    START WITH 1
    INCREMENT BY 1;
