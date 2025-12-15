/* =========================================================
   DATA RETRIEVAL QUERIES
   Purpose: Basic SELECT queries to retrieve data
   Tables Used: REGION, PRODUCTS, PAYMENT
   ========================================================= */

------------------------------------------------------------
-- 1. Retrieve all regions
------------------------------------------------------------
SELECT region_id, region_name
FROM REGION;

------------------------------------------------------------
-- 2. Retrieve all products
------------------------------------------------------------
SELECT product_id,
       product_name,
       category,
       unit_price
FROM PRODUCTS;

------------------------------------------------------------
-- 3. Retrieve products by category (example: Laptop)
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price
FROM PRODUCTS
WHERE category = 'Laptop';

------------------------------------------------------------
-- 4. Retrieve products ordered by price (highest first)
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price
FROM PRODUCTS
ORDER BY unit_price DESC;

------------------------------------------------------------
-- 5. Retrieve all payments
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       payment_date,
       payment_method,
       amount_paid,
       payment_status
FROM PAYMENT;

------------------------------------------------------------
-- 6. Retrieve payments for a specific sale
-- Change sale_id value as needed
------------------------------------------------------------
SELECT payment_id,
       amount_paid,
       payment_date,
       payment_method
FROM PAYMENT
WHERE sale_id = 201;

------------------------------------------------------------
-- 7. Retrieve payments with status = 'Paid'
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       amount_paid
FROM PAYMENT
WHERE payment_status = 'Paid';

------------------------------------------------------------
-- 8. Retrieve total amount paid per sale (simple aggregation)
------------------------------------------------------------
SELECT sale_id,
       SUM(amount_paid) AS total_paid
FROM PAYMENT
GROUP BY sale_id;

------------------------------------------------------------
-- 9. Retrieve latest payments (most recent first)
------------------------------------------------------------
SELECT payment_id,
       sale_id,
       payment_date,
       amount_paid
FROM PAYMENT
ORDER BY payment_date DESC;

------------------------------------------------------------
-- 10. Retrieve products within a price range
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price
FROM PRODUCTS
WHERE unit_price BETWEEN 500 AND 2000;
