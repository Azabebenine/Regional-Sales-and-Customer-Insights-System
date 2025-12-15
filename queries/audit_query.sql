/* =========================================================
   AUDIT QUERIES
   Purpose: Validate data quality, detect issues,
            and support auditing and monitoring
   Tables Used: REGION, PRODUCTS, PAYMENT
   ========================================================= */

------------------------------------------------------------
-- 1. Find payments with Pending status
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       amount_paid,
       payment_date
FROM PAYMENT
WHERE payment_status = 'Pending';

------------------------------------------------------------
-- 2. Find payments with zero or negative amounts
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       amount_paid
FROM PAYMENT
WHERE amount_paid <= 0;

------------------------------------------------------------
-- 3. Identify products without a valid price
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price
FROM PRODUCTS
WHERE unit_price IS NULL
   OR unit_price <= 0;

------------------------------------------------------------
-- 4. Check for products with invalid categories
------------------------------------------------------------
SELECT product_id,
       product_name,
       category
FROM PRODUCTS
WHERE category NOT IN ('Laptop', 'Accessory', 'Spare Part');

------------------------------------------------------------
-- 5. Detect duplicate product names
------------------------------------------------------------
SELECT product_name,
       COUNT(*) AS occurrences
FROM PRODUCTS
GROUP BY product_name
HAVING COUNT(*) > 1;

------------------------------------------------------------
-- 6. Audit payment methods used
------------------------------------------------------------
SELECT payment_method,
       COUNT(*) AS total_payments
FROM PAYMENT
GROUP BY payment_method;

------------------------------------------------------------
-- 7. Payment status summary report
------------------------------------------------------------
SELECT payment_status,
       COUNT(*) AS total_records,
       SUM(amount_paid) AS total_amount
FROM PAYMENT
GROUP BY payment_status;

------------------------------------------------------------
-- 8. Identify sales with multiple payments
------------------------------------------------------------
SELECT sale_id,
       COUNT(*) AS payment_count,
       SUM(amount_paid) AS total_paid
FROM PAYMENT
GROUP BY sale_id
HAVING COUNT(*) > 1;

------------------------------------------------------------
-- 9. Find payments made today
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       amount_paid
FROM PAYMENT
WHERE TRUNC(payment_date) = TRUNC(SYSDATE);

--------------------------------------
