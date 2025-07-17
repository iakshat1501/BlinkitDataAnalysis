# Delivery and Logistic KPIs

-- Average Delivery Time Year Wise
SELECT 
	year(o.order_date) as Year, 
	round(AVG(dp.delivery_time_minutes)) AS avg_delivery_time
FROM delivery_performance dp
join orders o on o.order_id = dp.order_id
group by year
order by year;

-- On-Time Delivery Rate
SELECT
	 year(o.order_date) as Year,
     round(COUNT(CASE WHEN dp.delivery_time_minutes = 0 THEN 1 END) * 100.0 / COUNT(*)) AS on_time_delivery_percentage
FROM delivery_performance dp
join orders o on o.order_id = dp.order_id
group by year
order by year;

-- Late Delivery Rate
SELECT 
	year(o.order_date) as Year,
    round(COUNT(CASE WHEN dp.delivery_time_minutes > 0 THEN 1 END) * 100.0 / COUNT(*)) AS late_delivery_percentage
FROM delivery_performance dp
join orders o on o.order_id = dp.order_id
group by year
order by year;

