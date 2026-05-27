WITH order_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.order_items`
),
product_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.products`
)
SELECT 
    p.category,
    COUNT(oi.id) AS total_orders,
    ROUND(SUM(oi.sale_price), 2) AS total_revenue
FROM order_data oi
JOIN product_data p
    ON oi.product_id = p.id
GROUP BY p.category
ORDER BY total_revenue DESC
