-- This query finds the number of unique suppliers and their total goods provided for each category that e-commerce store has, filtering for the most recent year, then sorting by total_goods_provided from highest to lowest values.
-- This is a fictional database example!

SELECT 
	DISTINCT suppliers.category AS category,
	COUNT(DISTINCT suppliers.name) AS num_suppliers,
	SUM(suppliers.goods_number) AS total_goods_provided
FROM suppliers
WHERE suppliers.year IN
	(SELECT
	  MAX(suppliers.year)
	FROM suppliers)
GROUP BY suppliers.category
ORDER BY total_goods_provided DESC;
