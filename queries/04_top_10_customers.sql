WITH customer_spend AS (
  SELECT
    user_id,
    SUM(sale_price) AS total_spend,
    COUNT(DISTINCT order_id) AS total_orders
  FROM `bigquery-public-data.thelook_ecommerce.order_items`
  WHERE status = 'Complete'
  GROUP BY user_id
)
SELECT
  user_id,
  total_spend,
  total_orders,
  RANK() OVER (ORDER BY total_spend DESC) AS spend_rank
FROM customer_spend
ORDER BY total_spend DESC
LIMIT 10;
