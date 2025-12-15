/* =========================================================
   ANALYTICS QUERIES
   Purpose: Analytical and reporting queries using
            window (analytic) functions
   Tables Used: PRODUCTS, PAYMENT
   ========================================================= */

------------------------------------------------------------
-- 1. Assign row numbers to products based on price
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       ROW_NUMBER() OVER (ORDER BY unit_price DESC) AS row_num
FROM PRODUCTS;

------------------------------------------------------------
-- 2. Rank products by price (with gaps)
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       RANK() OVER (ORDER BY unit_price DESC) AS price_rank
FROM PRODUCTS;

------------------------------------------------------------
-- 3. Dense rank products by price (no gaps)
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       DENSE_RANK() OVER (ORDER BY unit_price DESC) AS dense_price_rank
FROM PRODUCTS;

------------------------------------------------------------
-- 4. Rank products within each category
------------------------------------------------------------
SELECT product_id,
       product_name,
       category,
       unit_price,
       RANK() OVER (PARTITION BY category ORDER BY unit_price DESC) AS category_rank
FROM PRODUCTS;

------------------------------------------------------------
-- 5. Compare product price with previous product price
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       LAG(unit_price) OVER (ORDER BY unit_price) AS previous_price
FROM PRODUCTS;

------------------------------------------------------------
-- 6. Compare product price with next product price
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       LEAD(unit_price) OVER (ORDER BY unit_price) AS next_price
FROM PRODUCTS;

------------------------------------------------------------
-- 7. Running total of product prices
------------------------------------------------------------
SELECT product_id,
       product_name,
       unit_price,
       SUM(unit_price) OVER (ORDER BY unit_price) AS running_total
FROM PRODUCTS;

------------------------------------------------------------
-- 8. Total amount paid per sale using OVER clause
------------------------------------------------------------
SELECT sale_id,
       payment_id,
       amount_paid,
       SUM(amount_paid) OVER (PARTITION BY sale_id) AS total_paid_per_sale
FROM PAYMENT;

------------------------------------------------------------
-- 9. Average payment amount per sale
------------------------------------------------------------
SELECT sale_id,
       payment_id,
       amount_paid,
       AVG(amount_paid) OVER (PARTITION BY sale_id) AS avg_payment_per_sale
FROM PAYMENT;

------------------------------------------------------------
-- 10. Count number of payments per sale
------------------------------------------------------------
SELECT sale_id,
       payment_id,
       COUNT(*) OVER (PARTITION BY sale_id) AS payment_count
FROM PAYMENT;
