Olist E-commerce Business Intelligence Dashboard
1. Project Overview

This project develops an end-to-end Business Intelligence solution for the Olist Brazilian E-commerce Dataset, covering the complete analytics workflow from raw transactional data to an interactive Power BI dashboard.

The objective is to transform operational data into business insights that help decision-makers monitor sales performance, evaluate logistics efficiency, understand customer behavior, and identify growth opportunities.

## Skills Demonstrated

- SQL Server
- ETL
- Data Cleaning
- Data Warehouse
- Star Schema
- Power BI
- DAX
- Data Visualization
- Business Intelligence
- Data Analysis

2. Dataset

The dataset contains over 100,000 e-commerce orders placed on Olist Marketplace in Brazil between 2016 and 2018.

It includes information about:

Customers
Sellers
Customer Locations
Seller Locations
Orders
Order Items
Payments
Reviews
Products
Product Information
Product Categories
Product Category Translation

3. Technology Stack
Tool	Purpose
SQL Server	Data Cleaning & ETL
SQL	Data Transformation
Power BI	Data Modeling & Dashboard
DAX	Business Calculations
GitHub	Project Version Control

🏗️ Solution Architecture
                +----------------------+
                |   Raw CSV Dataset    |
                |   (9 Tables)         |
                +----------+-----------+
                           |
                           v
                +----------------------+
                |   SQL Server ETL     |
                | Cleaning & Transform |
                +----------+-----------+
                           |
                           v
                +----------------------+
                | Star Schema          |
                | Fact + Dimensions    |
                +----------+-----------+
                           |
                           v
                +----------------------+
                | Power BI Model       |
                | Relationships        |
                +----------+-----------+
                           |
                           v
                +----------------------+
                | DAX Measures         |
                | KPIs                 |
                +----------+-----------+
                           |
                           v
                +----------------------+
                | Interactive Dashboard|
                +----------+-----------+
                           |
                           v
                +----------------------+
                | Business Insights    |
                | Recommendations      |
                +----------------------+
                
5. Project Structure
Olist-Ecommerce-Analysis
│
├── dataset
│   └── dataset.md
│
├── SQL
│   └── DataWarehouse.sql
│
├── Power BI
│   └── Olist E-commerce Analysis Dashboard.md
│
├── Images
│   ├── Executive Overview.png
│   ├── Sales Analysis.png
│   ├── Product & Seller Performance.png
│   ├── Delivery Analysis.png
│   └── Customer Analysis.png
│
└── README.md
6. Project Workflow

The project follows a complete BI development process.

Raw CSV Files
        │
        ▼
SQL Data Cleaning
        │
        ▼
Feature Engineering
        │
        ▼
Star Schema Modeling
        │
        ▼
Power BI Data Model
        │
        ▼
DAX Measures
        │
        ▼
Dashboard Development
        │
        ▼
Business Insights
        │
        ▼
Recommendations

✨ Dashboard Features
------------------------------------------------------------------------------------------------------
| Module             | Features                                                                      |
| ------------------ | ----------------------------------------------------------------------------- |
| Executive Overview | Revenue KPI, Orders KPI, Customer KPI, Revenue Trend, Geographic Distribution |
| Sales Analysis     | Revenue by Weekday, Quarter Analysis, Category Performance                    |
| Product & Seller   | Category Performance, Seller Ranking, Revenue Distribution                    |
| Delivery Analysis  | On-time Delivery Rate, Delivery Days Distribution, Freight Cost Analysis      |
| Customer Analysis  | Repeat Customer Rate, Monthly Customers, Revenue per Customer by State        |
------------------------------------------------------------------------------------------------------

5.1 Data Cleaning & Feature Engineering (SQL)

The raw Olist dataset was transformed into an analytical data warehouse.

Data Cleaning
Removed duplicate records
Standardized data types
Handled NULL values
Removed inconsistent records
Feature Engineering

Created business metrics including:

Revenue
Delivery Days
Freight Cost
On-time Delivery Flag
Late Delivery Flag
Average Order Value
Order Status
Date Dimension

Built a Date Dimension supporting:

Year
Quarter
Month
Weekday
Year-Month
5.2 Data Warehouse Modeling

The project follows a Star Schema.

Fact Table
Fact_Order_Item
Dimension Tables
Dim_Customer
Dim_Product
Dim_Seller
Dim_Date

This model improves:

Query performance
Scalability
Simpler DAX calculations
5.3 DAX Measure Library

Business KPIs were created using DAX.

Examples include:

Sales
Total Revenue
Total Orders
Total Customers
Average Order Value
Product
Total Products Sold
Total Categories
Average Revenue per Seller
Delivery
Average Delivery Days
On-time Delivery Rate
Average Freight Cost
Customer
Average Orders per Customer
Average Revenue per Customer
Repeat Customers
Repeat Customer Rate

6. Key Business Insights & Recommendations
6.1. Executive Overview
Insight 1

Revenue increased steadily throughout 2017 and reached its highest level during late 2017 and early 2018.

Recommendation

Increase inventory and marketing investment before peak demand periods to maximize sales opportunities.

Insight 2

A small number of states, particularly São Paulo (SP), contribute a significant share of total revenue.

Recommendation

Continue strengthening operations in high-performing states while expanding marketing efforts into underpenetrated regions to diversify revenue sources.

Insight 3

Health & Beauty, Watches & Gifts, and Bed & Bath Table consistently generate the highest revenue.

Recommendation

Prioritize inventory availability, promotional campaigns, and supplier partnerships for these top-performing categories.

6.2. Sales Analysis
Insight 1

Sales performance varies across weekdays, with stronger revenue concentrated on weekdays than weekends.

Recommendation

Launch weekend promotions and targeted campaigns to improve weekend sales performance.

Insight 2

Revenue is unevenly distributed across quarters.

Recommendation

Plan seasonal marketing campaigns based on historical purchasing trends and prepare inventory ahead of high-demand periods.

Insight 3

A relatively small number of product categories generate most of the platform revenue.

Recommendation

Apply Pareto analysis to prioritize investment in high-performing categories while reviewing low-performing products.

6.3. Product & Seller Performance
Insight 1

Higher order volume generally leads to higher revenue across product categories.

Recommendation

Increase marketing support for high-potential categories capable of scaling order volume.

Insight 2

Seller revenue is highly concentrated in a few cities.

Recommendation

Expand seller recruitment programs in regions with lower seller representation to reduce dependency on major cities.

Insight 3

Several seller cities contribute minimal revenue.

Recommendation

Review seller performance, improve onboarding support, or consolidate underperforming seller regions.

6.4. Delivery Analysis
Insight 1

Most orders are delivered within approximately one to two weeks.

Recommendation

Maintain current logistics standards while focusing improvement efforts on long-tail deliveries.

Insight 2

Approximately 92% of orders are delivered on time.

Recommendation

Investigate recurring causes of delayed deliveries and optimize logistics routes to further improve customer satisfaction.

Insight 3

Certain states experience significantly longer delivery times.

Recommendation

Evaluate warehouse locations, shipping partners, and regional logistics strategies for these areas.

6.5. Customer Analysis
Insight 1

Only 10.27% of customers placed more than one order.

Recommendation

Develop customer retention strategies such as loyalty programs, personalized email campaigns, and post-purchase incentives to increase repeat purchases.

Insight 2

Customer growth increased significantly throughout 2017 before stabilizing in 2018.

Recommendation

Focus on customer retention alongside acquisition to sustain long-term business growth.

Insight 3

Average customer revenue differs noticeably across states.

Recommendation

Allocate marketing budgets toward regions with higher customer lifetime value while developing localized campaigns for lower-performing regions.

The dashboard enables stakeholders to monitor sales performance, logistics efficiency, product performance, and customer behavior through a unified analytical platform.

Author
Giang Dang Ho

giangdang12378@gmail.com

github.com/giangdang12378

https://www.linkedin.com/in/giang-%C4%91%E1%BA%B7ng-h%E1%BB%93-8a7aa0350/

 ⭐ Thanks for reading!
