WITH order_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.orders`
),
dist_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.distribution_centers`
),
inventory_data AS (
  SELECT * FROM `bigquery-public-data.thelook_ecommerce.inventory_items`
)
SELECT 
    dc.name AS distribution_center,
    COUNT(o.order_id) AS total_orders,
    ROUND(AVG(DATE_DIFF(DATE(o.shipped_at), DATE(o.created_at), DAY)), 2) AS avg_days_to_ship
FROM order_data o
JOIN inventory_data i
    ON o.order_id = i.id
JOIN dist_data dc
    ON i.product_distribution_center_id = dc.id
WHERE o.shipped_at IS NOT NULL
GROUP BY dc.name
ORDER BY avg_days_to_ship DESC
