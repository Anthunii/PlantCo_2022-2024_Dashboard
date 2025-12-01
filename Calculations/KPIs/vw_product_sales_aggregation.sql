CREATE VIEW vw_product_sales_aggregation AS 
SELECT
	p.product_name,
	p.product_id,
	SUM(s.sales) product_sales,
	SUM(s.quantity) product_quantity,
	(SUM(s.sales)-SUM(s.cogs)) product_gp,
	ROUND((SUM(s.sales)-SUM(s.cogs))/SUM(s.sales)*100,2) gp_percentage
FROM dim_product p
JOIN fact_sale s
ON p.product_id = s.product_id
GROUP BY p.product_name, p.product_id
ORDER BY gp_percentage DESC