WITH customer_orders AS (
  SELECT
    user_id,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(sale_price) AS total_revenue
  FROM `bigquery-public-data.thelook_ecommerce.order_items`
  WHERE status = 'Complete'
  GROUP BY user_id
)
SELECT
  CASE
    WHEN total_orders = 1 THEN 'New Customer'
    ELSE 'Repeat Customer'
  END AS customer_type,
  COUNT(DISTINCT user_id) AS customers,
  ROUND(SUM(total_revenue), 2) AS revenue
FROM customer_orders
GROUP BY customer_type
ORDER BY revenue DESC;
