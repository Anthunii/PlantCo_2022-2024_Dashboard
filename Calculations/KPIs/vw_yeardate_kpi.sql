CREATE VIEW vw_yeardate_kpi AS
SELECT 
	EXTRACT(YEAR FROM date_time) YTD,
    SUM(sales) total_sales,
	SUM(quantity) total_quantity,
	(SUM(sales) - SUM(cogs)) total_gp,
	(SUM(sales) - SUM(cogs)) / SUM(sales) * 100 AS gp_percent 
FROM fact_sale
GROUP BY YTD