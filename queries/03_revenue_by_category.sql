SELECT
  p.category,
  SUM(oi.sale_price) AS total_revenue,
  COUNT(DISTINCT oi.order_id) AS total_orders
FROM `bigquery-public-data.thelook_ecommerce.order_items` oi
JOIN `bigquery-public-data.thelook_ecommerce.products` p
  ON oi.product_id = p.id
WHERE oi.status = 'Complete'
GROUP BY p.category
ORDER BY total_revenue DESC;
