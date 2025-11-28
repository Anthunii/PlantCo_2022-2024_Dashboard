CREATE VIEW vw_core_kpi AS
SELECT 
    SUM(sales) total_sales,
	SUM(quantity) total_quantity,
	(SUM(sales) - SUM(cogs)) total_gp,
	(SUM(sales) - SUM(cogs)) / SUM(sales) * 100 AS gp_percent 
FROM fact_sale