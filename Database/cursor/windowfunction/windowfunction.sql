1. ROW_NUMBER() – Assign Unique Row Numbers
SELECT product_id, product_name, unit_price,
       ROW_NUMBER() OVER (ORDER BY unit_price DESC) AS rn
FROM PRODUCTS;

2. RANK() – Rank Products by Price (with gaps)
SELECT product_id, product_name, unit_price,
       RANK() OVER (ORDER BY unit_price DESC) AS rnk
FROM PRODUCTS;

3. DENSE_RANK() – Rank Products by Price (no gaps)
SELECT product_id, product_name, unit_price,
       DENSE_RANK() OVER (ORDER BY unit_price DESC) AS dense_rnk
FROM PRODUCTS;
4. LAG() – Compare with Previous Row
SELECT product_id, product_name, unit_price,
       LAG(unit_price, 1) OVER (ORDER BY unit_price) AS prev_price,
       unit_price - LAG(unit_price, 1) OVER (ORDER BY unit_price) AS price_change
FROM PRODUCTS;

5. LEAD() – Compare with Next Row
SELECT product_id, product_name, unit_price,
       LEAD(unit_price, 1) OVER (ORDER BY unit_price) AS next_price
FROM PRODUCTS;

6. PARTITION BY – Ranking within a Category

SELECT product_id, product_name, category, unit_price,
       RANK() OVER (PARTITION BY category ORDER BY unit_price DESC) AS cat_rank
FROM PRODUCTS;
7. Aggregate Functions with OVER
SELECT p.product_id, p.product_name, p.unit_price,
       SUM(pay.amount_paid) OVER (PARTITION BY p.product_id) AS total_paid
FROM PRODUCTS p
LEFT JOIN PAYMENT pay
ON p.product_id = pay.sale_id; -- assuming sale_id links to product_id
