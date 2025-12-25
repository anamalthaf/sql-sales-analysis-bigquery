SELECT
  DATE_TRUNC(created_at, MONTH) AS order_month,
  SUM(sale_price) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY order_month
ORDER BY order_month;
