# Power BI Automation Project: Super Store Data Analysis
This project is a Power BI report analyzing sales data from a Super Store dataset (Kaggle).

## Overview
The report provides key insights into sales, profit, customer distribution, and product performance, focusing on identifying high-value customers and best-selling products. To make this analysis efficient and maintainable, I implemented several automation techniques, from data refresh to user-driven interactivity.

## Data Sources
This dataset is by Kaggle:
https://www.kaggle.com/datasets/vivek468/superstore-dataset-final

## Tools & Process
- Data Preparation: Cleaned data in Excel and SSIS, loaded into SQL Server.
- Data Transformation: Applied Power Query transformations and created custom tables for additional insights (e.g., day names, complete location).
- Analysis: Created an RFM segmentation to identify customer value, along with visual breakdowns by category, shipping mode, and region.
- Power BI Automations:
- Scheduled Data Refresh: Keeps reports up-to-date with the latest data.
- Dataflow for ETL Automation: Streamlined transformations reusable across workspaces.
- Dynamic Filtering: Interactive slicers for date, category, and location allow end-users to customize the report view.
- Automated Insights with Power BI Q&A: Enables users to ask questions in natural language.
- Power Automate Integration: Sends alerts when key metrics are met, enhancing proactive decision-making.

## Project Files
- `Sales.CSV` - The Fact Transaction data.
- `Customes.CSV` - The Dimensional Customer data.
- `SuperStore RFM Analysis.sql`  - Microsoft SQL Server Query File for the RFM analysis.
- `SuperStore.pbix` - Power Bi Dashboard for the insights and analysis.
- `README.md` - This document.

## Key Insights
- Top Customers and most profitable products identified to focus marketing efforts.
- Shipping Mode Popularity: Standard Class is the most used, indicating potential for optimizing delivery costs.
- Regional Distribution: Most sales come from California, highlighting a regional concentration.

## Next Steps
Future enhancements will include integrating predictive analytics through Azure Machine Learning and setting up automated report sharing via subscriptions.

Author: `Mayada Yousuf`
Mail: mayadayousuf96@gmail.com
Date: 10/12/2024
