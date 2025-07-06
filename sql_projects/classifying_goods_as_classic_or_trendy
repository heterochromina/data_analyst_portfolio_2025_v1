-- This query lists the overall top five products in alphabetical order and shows if each product is "Classic" or "Trendy / Seasonal". 
-- A benchmark for being "Classic" is to be sold for 12 months.
-- This is a fictional database example!

SELECT 
	p.name AS product_name,
	COUNT(DISTINCT EXTRACT(MONTH FROM o.order_date)) AS active_months,
	CASE 
		WHEN COUNT(DISTINCT EXTRACT(MONTH FROM o.order_date)) >= 12 THEN 'Classic'
		ELSE 'Trendy' 
  	END AS product_type
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
GROUP BY p.name
ORDER BY product_name 
LIMIT 5;
