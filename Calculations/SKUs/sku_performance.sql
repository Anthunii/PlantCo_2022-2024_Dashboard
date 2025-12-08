WITH stats AS ( 
    SELECT
		-- Use percentiles as thresholds for quantity sold and gp
        percentile_cont(0.75) WITHIN GROUP (ORDER BY product_quantity) AS p75_qty,
        percentile_cont(0.50) WITHIN GROUP (ORDER BY product_quantity) AS median_qty,
        percentile_cont(0.75) WITHIN GROUP (ORDER BY product_gp) AS p75_gp,
        percentile_cont(0.50) WITHIN GROUP (ORDER BY product_gp) AS median_gp
    FROM vw_product_sales_aggregation
),
classified AS (
    SELECT 
        CASE 
			-- High performers: top 25% in both quantity and gross profit
            WHEN p.product_quantity >= s.p75_qty AND p.product_gp >= s.p75_gp THEN 'High Performer'
			
			-- Low movement but profitable: below median quantity but top 25% gross profit
            WHEN p.product_quantity < s.median_qty AND p.product_gp >= s.p75_gp THEN 'Low Volume but Profitable'

			 -- Underperforming SKUs: below median in both quantity and gross profit
            WHEN p.product_quantity < s.median_qty AND p.product_gp < s.median_gp THEN 'Underperforming SKU'

			-- Mixed performance: everything else
            ELSE 'Mixed Performance'
        END AS performance_category
    FROM vw_product_sales_aggregation p
    CROSS JOIN stats s
)

-- Count how many SKU in each category
SELECT 
    performance_category,
    COUNT(*) AS sku_count,
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER(), 2) AS percentage_of_total
FROM classified
GROUP BY performance_category
ORDER BY sku_count DESC;
