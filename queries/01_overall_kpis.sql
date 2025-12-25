SELECT
  COUNT(DISTINCT order_id) AS total_orders,
  SUM(sale_price) AS total_revenue,
  ROUND(SUM(sale_price) / COUNT(DISTINCT order_id), 2) AS avg_order_value
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete';
