# Sales and Revenue KPIs

-- Total Revenue
SELECT round(SUM(order_total),2) AS total_revenue
FROM orders;

-- Total Revenue Yearwise
WITH yearly_revenue AS (
    SELECT 
        YEAR(order_date) AS year,
        ROUND(SUM(order_total), 2) AS total_revenue
    FROM orders
    GROUP BY YEAR(order_date)
),
revenue_growth AS (
    SELECT 
        year,
        total_revenue,
        LAG(total_revenue) OVER (ORDER BY year) AS prev_year_revenue
    FROM yearly_revenue
)
SELECT 
    year,
    total_revenue,
    prev_year_revenue,
    ROUND(
        (total_revenue - prev_year_revenue) * 100.0 / NULLIF(prev_year_revenue, 0),
        2
    ) AS percentage_increase
FROM revenue_growth;

-- Average Order Value
SELECT 
  Year,
  ROUND(AVG(order_total)) AS avg_order_value
FROM (
  SELECT 
    o.order_id,
    YEAR(o.order_date) AS Year,
    SUM(oi.quantity * oi.unit_price) AS order_total
  FROM orders o
  JOIN order_items oi ON o.order_id = oi.order_id
  GROUP BY o.order_id, YEAR(o.order_date)
) AS order_values
GROUP BY Year
ORDER BY Year;

-- Customer Lifetime Value (CLTV)
SELECT 
    o.customer_id,
    c.customer_name,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS lifetime_value,
    COUNT(DISTINCT o.order_id) AS total_orders,
    MIN(o.order_date) AS first_order,
    MAX(o.order_date) AS last_order
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.customer_name
ORDER BY lifetime_value DESC;

-- Daily / Weekly Revenue Trends
SELECT 
    DATE(order_date) AS date,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS daily_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY DATE(order_date)
ORDER BY daily_revenue desc;

-- Weekly
SELECT 
    YEAR(order_date) AS year,
    WEEK(order_date) AS week,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS weekly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY YEAR(order_date), WEEK(order_date)
ORDER BY year, week;

-- Revenue By Area
SELECT 
    c.area,
    ROUND(SUM(oi.quantity * oi.unit_price), 2) AS area_revenue,
    COUNT(DISTINCT o.order_id) AS orders_count
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.area
ORDER BY area_revenue DESC;


