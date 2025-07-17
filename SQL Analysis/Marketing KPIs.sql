# Marketing KPIs

-- Conversion Rate per Campaign
SELECT campaign_id, 
  (conversions * 100.0 / impressions) AS conversion_rate
FROM marketing_performance
order by conversion_rate desc;

-- Cost per Acquisition (CPA)
SELECT campaign_id, 
  spend / NULLIF(conversions, 0) AS cost_per_acquisition
FROM marketing_performance
order by cost_per_acquisition desc;