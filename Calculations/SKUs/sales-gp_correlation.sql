SELECT ROUND(CORR(product_sales, product_gp)::NUMERIC,2) AS sales_gp_correlation
FROM vw_product_sales_aggregation;