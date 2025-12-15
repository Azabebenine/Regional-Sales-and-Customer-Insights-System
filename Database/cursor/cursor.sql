1. Explicit Cursor: List all products and their prices
DECLARE
    -- Declare explicit cursor
    CURSOR product_cur IS
        SELECT product_id, product_name, unit_price
        FROM PRODUCTS;

    -- Variables to hold fetched values
    v_product_id   PRODUCTS.product_id%TYPE;
    v_product_name PRODUCTS.product_name%TYPE;
    v_unit_price   PRODUCTS.unit_price%TYPE;
BEGIN
    OPEN product_cur;  -- Open the cursor

    LOOP
        FETCH product_cur INTO v_product_id, v_product_name, v_unit_price;
        EXIT WHEN product_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Product ID: ' || v_product_id || 
                             ', Name: ' || v_product_name || 
                             ', Price: ' || v_unit_price);
    END LOOP;

    CLOSE product_cur; -- Close the cursor
END;
/

2. Cursor with Parameter: Payments for a specific sale

DECLARE
    -- Cursor with parameter
    CURSOR payment_cur(p_sale_id IN NUMBER) IS
        SELECT payment_id, amount_paid, payment_date
        FROM PAYMENT
        WHERE sale_id = p_sale_id;

    v_payment_id  PAYMENT.payment_id%TYPE;
    v_amount_paid PAYMENT.amount_paid%TYPE;
    v_payment_date PAYMENT.payment_date%TYPE;
BEGIN
    OPEN payment_cur(201);  -- Pass sale_id as parameter

    LOOP
        FETCH payment_cur INTO v_payment_id, v_amount_paid, v_payment_date;
        EXIT WHEN payment_cur%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Payment ID: ' || v_payment_id || 
                             ', Amount: ' || v_amount_paid || 
                             ', Date: ' || TO_CHAR(v_payment_date, 'DD-MON-YYYY'));
    END LOOP;

    CLOSE payment_cur;
END;
/

3. Bulk Fetch: Load all products into a collection

DECLARE
    -- Define a collection type for products
    TYPE product_tab IS TABLE OF PRODUCTS%ROWTYPE;
    v_products product_tab;

BEGIN
    -- Bulk collect into collection
    SELECT *
    BULK COLLECT INTO v_products
    FROM PRODUCTS;

    -- Loop through the collection
    FOR i IN 1 .. v_products.COUNT LOOP
        DBMS_OUTPUT.PUT_LINE('Product ID: ' || v_products(i).product_id ||
                             ', Name: ' || v_products(i).product_name ||
                             ', Price: ' || v_products(i).unit_price);
    END LOOP;
END;
/
