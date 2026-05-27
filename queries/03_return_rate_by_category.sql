WITH order_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.order_items`
),
product_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.products`
)
SELECT 
    p.category,
    COUNT(oi.id) AS total_orders,
    SUM(CASE WHEN oi.status = 'Returned' THEN 1 ELSE 0 END) AS total_returns,
    ROUND(SUM(CASE WHEN oi.status = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(oi.id), 2) AS return_rate_pct
FROM order_data oi
JOIN product_data p
    ON oi.product_id = p.id
GROUP BY p.category
ORDER BY return_rate_pct DESC
LIMIT 10
