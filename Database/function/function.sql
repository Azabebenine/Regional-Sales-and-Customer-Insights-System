1. Procedure to Insert a New Region

CREATE OR REPLACE PROCEDURE add_region (
    p_region_id   IN  REGION.region_id%TYPE,
    p_region_name IN  REGION.region_name%TYPE
)
IS
BEGIN
    INSERT INTO REGION (region_id, region_name)
    VALUES (p_region_id, p_region_name);
    
    DBMS_OUTPUT.PUT_LINE('Region added successfully: ' || p_region_name);

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Region ID already exists.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/

TO TEST

BEGIN
    add_region(1, 'North America');
END;
/

2. Procedure to Update Product Price

CREATE OR REPLACE PROCEDURE update_product_price (
    p_product_id   IN  PRODUCTS.product_id%TYPE,
    p_new_price    IN  PRODUCTS.unit_price%TYPE,
    p_status       OUT VARCHAR2
)
IS
BEGIN
    UPDATE PRODUCTS
    SET unit_price = p_new_price
    WHERE product_id = p_product_id;

    IF SQL%ROWCOUNT = 0 THEN
        p_status := 'Product not found';
    ELSE
        p_status := 'Price updated successfully';
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        p_status := 'Error: ' || SQLERRM;
END;
/

TO TEST
DECLARE
    v_status VARCHAR2(100);
BEGIN
    update_product_price(101, 1500.00, v_status);
    DBMS_OUTPUT.PUT_LINE(v_status);
END;
/

3. Procedure: Delete Customer

CREATE OR REPLACE PROCEDURE delete_customer (
    p_customer_id IN CUSTOMERS.customer_id%TYPE
) IS
BEGIN
    DELETE FROM CUSTOMERS
    WHERE customer_id = p_customer_id;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Customer not found.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Customer deleted successfully.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Deletion error: ' || SQLERRM);
END;
/

TO TEST

-- Enable DBMS_OUTPUT in SQL*Plus / SQL Developer
SET SERVEROUTPUT ON;

DECLARE
    v_customer_id CUSTOMERS.customer_id%TYPE;
BEGIN
    -- Replace 101 with the actual customer_id you want to delete
    v_customer_id := 101;

    -- Call the procedure
    delete_customer(v_customer_id);
END;
/



