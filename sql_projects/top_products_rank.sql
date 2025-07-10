-- This query identifies the 30 most popular products by unit sales across all categories in descending order, based on transactional order data from the beginning of 2025. 
-- It enables stakeholders to quickly spot top-performing SKUs and optimize procurement or promotional efforts.
-- This is a fictional database example!

SELECT 
  p.name AS product_name,
  p.category AS category,
  SUM(o.quantity) AS total_units_sold,
  DENSE_RANK() OVER (ORDER BY SUM(o.quantity) DESC) AS popularity_rank
FROM orders o 
LEFT JOIN products p
USING (product_id)
WHERE o.order_date >= '2025-01-01'
GROUP BY p.name, p.category
ORDER BY popularity_rank
LIMIT 30;
