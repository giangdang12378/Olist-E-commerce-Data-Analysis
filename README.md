# Olist E-commerce Business Intelligence Dashboard

## 📌 Project Overview

This project presents an end-to-end **Business Intelligence solution**
built on the **Olist Brazilian E-commerce Dataset**. It covers the
complete analytics workflow from raw CSV files to an interactive Power
BI dashboard using SQL Server, Star Schema modeling, DAX, and Power BI.

The objective is to transform operational data into actionable business
insights for sales, logistics, product, seller, and customer analysis.

------------------------------------------------------------------------

## 🚀 Skills Demonstrated

-   SQL Server
-   SQL ETL
-   Data Cleaning
-   Data Transformation
-   Data Warehouse
-   Star Schema Modeling
-   Power BI
-   DAX
-   Data Visualization
-   Business Intelligence
-   Business Analysis

------------------------------------------------------------------------

## 📊 Dataset

The project uses the **Olist Brazilian E-commerce Public Dataset**,
containing more than **100,000 orders** between **2016--2018**.

### Tables

-   Customers
-   Sellers
-   Orders
-   Order Items
-   Order Payments
-   Order Reviews
-   Products
-   Product Category Translation
-   Geolocation

------------------------------------------------------------------------

## 🛠 Technology Stack

  Tool         Purpose
  ------------ -------------------------------------
  SQL Server   ETL, Data Cleaning & Transformation
  SQL          Feature Engineering
  Power BI     Data Modeling & Dashboard
  DAX          Business KPI Calculation
  GitHub       Version Control

------------------------------------------------------------------------

## 🏗 Solution Architecture

``` text
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
```

------------------------------------------------------------------------

## 📁 Project Structure

``` text
Olist-Ecommerce-Analysis
│
├── dataset
├── images
├── power bi
├── sql
└── README.md
```

------------------------------------------------------------------------

## ✨ Dashboard Features

  -----------------------------------------------------------------------
  Dashboard                             Features
  ------------------------------------- ---------------------------------
  Executive Overview                    Revenue KPI, Orders KPI,
                                        Customers KPI, Revenue Trend,
                                        Geographic Distribution

  Sales Analysis                        Revenue by Weekday, Quarter
                                        Analysis, Category Performance

  Product & Seller                      Category Performance, Seller
                                        Ranking, Revenue Distribution

  Delivery Analysis                     On-time Delivery Rate, Delivery
                                        Days Distribution, Freight Cost
                                        Analysis

  Customer Analysis                     Repeat Customer Rate, Monthly
                                        Customers, Revenue per Customer
  -----------------------------------------------------------------------


------------------------------------------------------------------------

## ⚙ Data Cleaning & Feature Engineering

### Data Cleaning

-   Removed duplicate records
-   Standardized data types
-   Handled missing values
-   Removed inconsistent records

### Feature Engineering

Created:

-   Revenue
-   Delivery Days
-   Freight Cost
-   On-time Delivery Flag
-   Late Delivery Flag
-   Average Order Value
-   Order Status

### Date Dimension

-   Year
-   Quarter
-   Month
-   Weekday
-   Year-Month

------------------------------------------------------------------------

## ⭐ Data Warehouse Design

### Fact Table

-   Fact_Order_Item

### Dimension Tables

-   Dim_Customer
-   Dim_Product
-   Dim_Seller
-   Dim_Date

### Benefits

-   Faster analytical queries
-   Better scalability
-   Simpler DAX calculations

------------------------------------------------------------------------

## 📈 DAX Measure Library

### Sales

-   Total Revenue
-   Total Orders
-   Total Customers
-   Average Order Value

### Product

-   Products Sold
-   Total Categories
-   Average Revenue per Seller

### Delivery

-   Average Delivery Days
-   On-time Delivery Rate
-   Average Freight Cost

### Customer

-   Average Orders per Customer
-   Average Revenue per Customer
-   Repeat Customers
-   Repeat Customer Rate

------------------------------------------------------------------------

## 💡 Key Business Insights & Recommendations

### 📊 Executive Overview

-   Revenue increased steadily throughout 2017 and peaked in late
    2017--early 2018 with **98,000+ completed orders**.
    -   **Recommendation:** Increase inventory and marketing before peak
        demand periods.
-   São Paulo contributed the largest share of revenue.
    -   **Recommendation:** Expand into underpenetrated regions while
        maintaining leadership in SP.
-   Health & Beauty, Watches & Gifts, and Bed & Bath Table generated the
    highest revenue.
    -   **Recommendation:** Prioritize inventory and promotions for
        these categories.

### 💰 Sales Analysis

-   Weekday sales outperformed weekends.
    -   **Recommendation:** Launch weekend promotions.
-   Revenue showed seasonal fluctuations.
    -   **Recommendation:** Prepare inventory before peak seasons.
-   A small number of categories generated most revenue.
    -   **Recommendation:** Apply Pareto analysis.

### 📦 Product & Seller

-   Higher order volume correlated with higher revenue.
-   Seller revenue was concentrated in a few cities.
-   Some seller regions generated low revenue.

### 🚚 Delivery

-   Average delivery time was approximately **12 days**.
-   **92%** of **98,666 orders** were delivered on time.
-   Some states experienced longer delivery times.

### 👥 Customer

-   Only **10.27%** of **95,420 customers** made repeat purchases.
-   Customer growth accelerated in 2017 before stabilizing.
-   Customer revenue varied significantly by state.

------------------------------------------------------------------------

## 🎯 Business Value

This project demonstrates:

-   SQL ETL
-   Data Warehouse Design
-   Star Schema Modeling
-   Power BI Dashboard Development
-   DAX KPI Development
-   Business Insight Generation

------------------------------------------------------------------------

## 👨‍💻 Author

**Giang Dang Ho**

-   📧 giangdang12378@gmail.com
-   💼 https://www.linkedin.com/in/giang-đặng-hồ-8a7aa0350/
-   🐙 https://github.com/giangdang12378
