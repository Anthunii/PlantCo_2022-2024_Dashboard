SELECT
	'Total' AS type,
	SUM(total_sales) AS sales,
	SUM(total_quantity) AS quantity,
	SUM(total_gp) AS gp
FROM vw_core_kpi
UNION ALL
SELECT
	'Mean per Product',
	ROUND(AVG(product_sales),2),
	ROUND(AVG(product_quantity),2),
	ROUND(AVG(product_gp),2)
FROM vw_product_sales_aggregation
UNION ALL
SELECT
	'Median per Product',
	ROUND(percentile_cont(0.5) WITHIN GROUP (ORDER BY product_sales)::NUMERIC,2),
	ROUND(percentile_cont(0.5) WITHIN GROUP (ORDER BY product_quantity)::NUMERIC,2),
	ROUND(percentile_cont(0.5) WITHIN GROUP (ORDER BY product_gp)::NUMERIC,2)
FROM vw_product_sales_aggregation