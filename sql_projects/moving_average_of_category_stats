-- This query calculates a 3-year moving average of orders and revenue for the 'Snacks' category to track its long-term performance over time. 
-- It helps spot trends, smooth out seasonality, and support better inventory or marketing planning.
-- This is a fictional database example!

WITH Category_Stats AS (
  SELECT
    EXTRACT(YEAR FROM order_date) AS year,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(order_amount) AS total_revenue
  FROM orders
  WHERE category = 'Snacks'
  GROUP BY EXTRACT(YEAR FROM order_date)
)

SELECT
  year,
  total_orders,
  total_revenue,
  ROUND(AVG(total_orders), 2) OVER (
    ORDER BY year ASC
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
  ) AS three_year_moving_avg_orders,
  ROUND(AVG(total_revenue), 2) OVER (
    ORDER BY year ASC
    ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
  ) AS three_year_moving_avg_revenue
FROM Category_Stats
ORDER BY year ASC;
