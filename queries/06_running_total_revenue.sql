SELECT
  DATE(created_at) AS order_date,
  SUM(sale_price) AS daily_revenue,
  SUM(SUM(sale_price)) OVER (
    ORDER BY DATE(created_at)
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS running_total_revenue
FROM `bigquery-public-data.thelook_ecommerce.order_items`
WHERE status = 'Complete'
GROUP BY order_date
ORDER BY order_date;
