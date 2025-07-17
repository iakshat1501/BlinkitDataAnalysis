# Customer KPIs

-- Average Customer Feedback Score
SELECT 
	year(o.order_date) as Year,
	round(AVG(cf.rating),1) AS avg_feedback
FROM customer_feedback cf
join orders o on o.order_id = cf.order_id
group by year
order by year;

-- Active Customers (Placed >1 order)
SELECT 
  YEAR(order_date) AS Year, 
  COUNT(DISTINCT customer_id) AS active_customers
FROM orders
WHERE customer_id IN (
  SELECT customer_id
  FROM orders
  GROUP BY customer_id
  HAVING COUNT(order_id) > 1
)
GROUP BY YEAR(order_date)
ORDER BY Year;

-- Customer Retention Rate
SELECT 
    COUNT(*) * 100.0 / (SELECT COUNT(DISTINCT customer_id) FROM customers) AS retention_rate_percentage
FROM (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(order_id) > 1
) AS repeat_customers;

-- Net Promoter Score (NPS)
SELECT 
    ROUND(
        (COUNT(CASE WHEN rating >= 4 THEN 1 END) * 100.0 / COUNT(*))
        -
        (COUNT(CASE WHEN rating <= 2 THEN 1 END) * 100.0 / COUNT(*)),
        2
    ) AS net_promoter_score
FROM customer_feedback;

-- Percentage increase in each customer segment
WITH yearly_segment_counts AS (
    SELECT 
        YEAR(registration_date) AS reg_year,
        customer_segment,
        COUNT(*) AS segment_count
    FROM customers
    GROUP BY YEAR(registration_date), customer_segment
),
growth_calc AS (
    SELECT 
        reg_year,
        customer_segment,
        segment_count,
        LAG(segment_count) OVER (PARTITION BY customer_segment ORDER BY reg_year) AS prev_year_count
    FROM yearly_segment_counts
)
SELECT 
    reg_year,
    customer_segment,
    segment_count,
    prev_year_count,
    ROUND(
        (segment_count - prev_year_count) * 100.0 / NULLIF(prev_year_count, 0),
        2
    ) AS percentage_increase
FROM growth_calc
ORDER BY customer_segment, reg_year;


