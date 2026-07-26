Olist E-commerce Business Intelligence Dashboard

📌 Project Overview

This project presents an end-to-end Business Intelligence solution built on the Olist Brazilian E-commerce Dataset. The project covers the complete analytics workflow, from raw CSV files to an interactive Power BI dashboard, following a modern BI development process.

The objective is to transform operational data into actionable business insights that help decision-makers monitor sales performance, optimize logistics, understand customer behavior, and support strategic business decisions.

 Skills Demonstrated
SQL Server
SQL ETL
Data Cleaning
Data Transformation
Data Warehouse
Star Schema Modeling
Power BI
DAX
Data Visualization
Business Intelligence
Business Analysis
📊 Dataset

The project uses the Olist Brazilian E-commerce Public Dataset, containing over 100,000 orders placed between 2016 and 2018.

The dataset includes 9 relational tables:

Customers
Sellers
Orders
Order Items
Order Payments
Order Reviews
Products
Product Category Translation
Geolocation
🛠 Technology Stack
Tool	Purpose
SQL Server	ETL, Data Cleaning & Transformation
SQL	Feature Engineering
Power BI	Data Modeling & Dashboard
DAX	Business KPI Calculation
GitHub	Version Control
 Solution Architecture
                 Raw CSV Dataset (9 Tables)
                         │
                         ▼
                 SQL Server ETL
           Cleaning & Transformation
                         │
                         ▼
                 Star Schema Design
             (1 Fact + 4 Dimensions)
                         │
                         ▼
               Power BI Data Model
                         │
                         ▼
                 DAX Measure Library
                         │
                         ▼
              Interactive BI Dashboard
                         │
                         ▼
         Business Insights & Recommendations
 Project Structure
Olist-Ecommerce-Analysis
│
├── dataset
│   └── dataset.md
│
├── sql
│   └── DataWarehouse.sql
│
├── power bi
│   └── Olist Dashboard.pbix
│
├── images
│   ├── Executive Overview.png
│   ├── Sales Analysis.png
│   ├── Product & Seller Performance.png
│   ├── Delivery Analysis.png
│   └── Customer Analysis.png
│
└── README.md
✨ Dashboard Features
Dashboard	Features
Executive Overview	Revenue KPI, Orders KPI, Customers KPI, Revenue Trend, Geographic Distribution
Sales Analysis	Revenue by Weekday, Quarter Analysis, Category Performance
Product & Seller	Category Performance, Seller Ranking, Revenue Distribution
Delivery Analysis	On-time Delivery Rate, Delivery Days Distribution, Freight Cost Analysis
Customer Analysis	Repeat Customer Rate, Monthly Customers, Revenue per Customer

⚙ Data Cleaning & Feature Engineering

The raw dataset was transformed into a business-ready analytical data warehouse.

Data Cleaning
Removed duplicate records
Standardized data types
Handled missing values
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

A dedicated Date Dimension was created to support Time Intelligence analysis.

Included:

Year
Quarter
Month
Weekday
Year-Month
⭐ Data Warehouse Design

The project follows a Star Schema.

Fact Table
Fact_Order_Item
Dimension Tables
Dim_Customer
Dim_Product
Dim_Seller
Dim_Date
Benefits
Faster analytical queries
Better scalability
Simpler DAX calculations
📈 DAX Measure Library

More than 15 business measures were developed.

Sales
Total Revenue
Total Orders
Total Customers
Average Order Value
Product
Products Sold
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
💡 Key Business Insights & Recommendations
📊 Executive Overview
Insight 1

Revenue increased steadily throughout 2017, reaching its highest level during late 2017 and early 2018, with more than 98,000 completed orders processed.

Recommendation

Increase inventory and marketing investment before peak demand periods to maximize sales opportunities.

Insight 2

São Paulo (SP) contributed the largest share of platform revenue, indicating strong geographic concentration.

Recommendation

Maintain market leadership in high-performing regions while expanding marketing efforts into underpenetrated states.

Insight 3

Health & Beauty, Watches & Gifts, and Bed & Bath Table consistently generated the highest revenue.

Recommendation

Prioritize inventory planning and promotional campaigns for these high-performing categories.

💰 Sales Analysis
Insight 1

Sales performance was stronger on weekdays than weekends.

Recommendation

Launch weekend promotions to increase customer engagement and sales.

Insight 2

Revenue showed clear seasonal fluctuations across quarters.

Recommendation

Prepare inventory and marketing campaigns before peak shopping periods.

Insight 3

A relatively small number of product categories generated most platform revenue.

Recommendation

Apply Pareto analysis to prioritize investment in top-performing categories.

📦 Product & Seller Performance
Insight 1

Higher order volume strongly correlated with higher category revenue.

Recommendation

Increase marketing investment in scalable product categories.

Insight 2

Seller revenue was highly concentrated in a few cities.

Recommendation

Expand seller recruitment in underrepresented regions.

Insight 3

Several seller cities generated relatively low revenue.

Recommendation

Review seller performance and improve onboarding support.

🚚 Delivery Analysis
Insight 1

Most orders were delivered within 1–2 weeks, with an average delivery time of approximately 12 days.

Recommendation

Maintain current logistics performance while reducing long-tail delivery delays.

Insight 2

Approximately 92% of 98,666 orders were delivered on time.

Recommendation

Analyze recurring causes of delayed deliveries and optimize logistics routes.

Insight 3

Certain states experienced noticeably longer delivery times.

Recommendation

Evaluate warehouse locations and regional shipping partners.

👥 Customer Analysis
Insight 1

Only 10.27% of 95,420 customers made more than one purchase.

Recommendation

Implement customer retention initiatives such as loyalty programs, personalized email campaigns, and post-purchase incentives.

Insight 2

Customer acquisition grew rapidly throughout 2017 before stabilizing in 2018.

Recommendation

Focus on improving customer retention to sustain long-term growth.

Insight 3

Average customer revenue varied significantly across states.

Recommendation

Allocate marketing budgets toward regions with higher customer lifetime value while developing localized campaigns for lower-performing markets.

🎯 Business Value

This project demonstrates an end-to-end Business Intelligence workflow:

Data Cleaning & ETL using SQL Server
Data Warehouse Design with Star Schema
Interactive Dashboard Development using Power BI
Business KPI Development using DAX
Business Insight Generation
Data-driven Decision Support
👨‍💻 Author

Giang Dang Ho

📧 Email: giangdang12378@gmail.com

💼 LinkedIn: https://www.linkedin.com/in/giang-đặng-hồ-8a7aa0350/

🐙 GitHub: https://github.com/giangdang12378
