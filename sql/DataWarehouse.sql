Create database [Olist E-commerce Data Analysis]
--data_profiling
SELECT COUNT(*) AS Customers
FROM customers;

SELECT COUNT(*) AS Sellers
FROM sellers;

SELECT COUNT(*) AS Products
FROM products;

SELECT COUNT(*) AS Orders
FROM orders;

SELECT COUNT(*) AS Order_Items
FROM order_items;

SELECT COUNT(*) AS Payments
FROM order_payments;

SELECT COUNT(*) AS Reviews
FROM order_reviews;

SELECT COUNT(*) AS Geolocation
FROM geolocation;

SELECT COUNT(*) AS Category_Translation
FROM product_category_name_translation;

--Check duplicate
SELECT
    customer_id,
    COUNT(*) AS Total
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

SELECT
    order_id,
    COUNT(*) AS Total
FROM orders
GROUP BY order_id
HAVING COUNT(*) > 1;

SELECT
    product_id,
    COUNT(*) AS Total
FROM products
GROUP BY product_id
HAVING COUNT(*) > 1;

SELECT
    seller_id,
    COUNT(*) AS Total
FROM sellers
GROUP BY seller_id
HAVING COUNT(*) > 1;

SELECT
    review_id,
    COUNT(*) AS Total
FROM order_reviews
GROUP BY review_id
HAVING COUNT(*) > 1;

SELECT
    order_id,
    payment_sequential,
    COUNT(*) AS Total
FROM order_payments
GROUP BY
    order_id,
    payment_sequential
HAVING COUNT(*) > 1;

SELECT
    order_id,
    order_item_id,
    COUNT(*) AS Total
FROM order_items
GROUP BY
    order_id,
    order_item_id
HAVING COUNT(*) > 1;

--check null
SELECT
    SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS order_id_null,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS customer_id_null,
    SUM(CASE WHEN order_status IS NULL THEN 1 ELSE 0 END) AS order_status_null,
    SUM(CASE WHEN order_purchase_timestamp IS NULL THEN 1 ELSE 0 END) AS purchase_null,
    SUM(CASE WHEN order_approved_at IS NULL THEN 1 ELSE 0 END) AS approved_null,
    SUM(CASE WHEN order_delivered_carrier_date IS NULL THEN 1 ELSE 0 END) AS carrier_null,
    SUM(CASE WHEN order_delivered_customer_date IS NULL THEN 1 ELSE 0 END) AS delivered_null,
    SUM(CASE WHEN order_estimated_delivery_date IS NULL THEN 1 ELSE 0 END) AS estimated_null
FROM orders;

SELECT
    review_score,
    COUNT(*) AS Total
FROM order_reviews
GROUP BY review_score
ORDER BY review_score;

SELECT
    payment_type,
    COUNT(*) AS Total
FROM order_payments
GROUP BY payment_type
ORDER BY Total DESC;

SELECT
    order_status,
    COUNT(*) AS Total
FROM orders
GROUP BY order_status
ORDER BY Total DESC;

SELECT
    MIN(price) AS MinPrice,
    MAX(price) AS MaxPrice,
    AVG(price) AS AvgPrice
FROM order_items;

SELECT
    MIN(freight_value) AS MinFreight,
    MAX(freight_value) AS MaxFreight,
    AVG(freight_value) AS AvgFreight
FROM order_items;

SELECT
    MIN(product_weight_g) AS MinWeight,
    MAX(product_weight_g) AS MaxWeight,
    AVG(product_weight_g) AS AvgWeight
FROM products;

SELECT COUNT(*) AS MissingOrders
FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;

SELECT COUNT(*) AS MissingProducts
FROM order_items oi
LEFT JOIN products p
ON oi.product_id = p.product_id
WHERE p.product_id IS NULL;

SELECT COUNT(*) AS MissingSellers
FROM order_items oi
LEFT JOIN sellers s
ON oi.seller_id = s.seller_id
WHERE s.seller_id IS NULL;

SELECT *,
       COUNT(*) AS duplicate_count
FROM customers
GROUP BY
    customer_id,
    customer_unique_id,
    customer_zip_code_prefix,
    customer_city,
    customer_state
HAVING COUNT(*) > 1;


--check logic thời gian
SELECT *
FROM orders
WHERE order_approved_at < order_purchase_timestamp;

SELECT *
FROM orders
WHERE order_delivered_customer_date < order_delivered_carrier_date;

SELECT
    order_id,
    order_purchase_timestamp,
    order_approved_at,
    order_delivered_carrier_date,
    order_delivered_customer_date,
    DATEDIFF(MINUTE,
             order_delivered_carrier_date,
             order_delivered_customer_date) AS DeliveryGap_Minutes
FROM orders
WHERE order_delivered_customer_date < order_delivered_carrier_date
ORDER BY DeliveryGap_Minutes;

/* Business Rule:
Customer delivery date must not be earlier than carrier pickup date.
Actual Result:
23 rows*/
SELECT *
FROM orders
WHERE order_estimated_delivery_date < order_purchase_timestamp;

--Tạo schema cho các bảng clean
CREATE SCHEMA clean;
GO

SELECT *
INTO clean.orders
FROM orders;

SELECT * INTO clean.customers FROM customers;
SELECT * INTO clean.sellers FROM sellers;
SELECT * INTO clean.products FROM products;
SELECT * INTO clean.orders FROM orders;
SELECT * INTO clean.order_items FROM order_items;
SELECT * INTO clean.order_payments FROM order_payments;
SELECT * INTO clean.order_reviews FROM order_reviews;
SELECT * INTO clean.geolocation FROM geolocation;
SELECT * INTO clean.product_category_name_translation FROM product_category_name_translation;


--orders cleaning
SELECT *
FROM clean.orders
WHERE LTRIM(RTRIM(order_status)) <> order_status;

UPDATE clean.orders
SET order_status = LOWER(order_status);

ALTER TABLE clean.orders
ADD invalid_delivery_timeline BIT;

UPDATE clean.orders
SET invalid_delivery_timeline =
CASE
    WHEN order_delivered_customer_date < order_delivered_carrier_date THEN 1
    ELSE 0
END;

-- Tạo feature
ALTER TABLE clean.orders
ADD delivery_days INT;
/*
# Star Schema Design

## Fact Table

fact_order_item

Measures
- price
- freight_value
- item_total

Foreign Keys
- customer_key
- product_key
- seller_key
- date_key

---

## Dimension Tables

dim_customer

- customer_key
- customer_id
- customer_unique_id
- customer_city
- customer_state

dim_product

- product_key
- product_id
- product_category_name
...

dim_seller

- seller_key
- seller_id
- seller_city
- seller_state

dim_date

- date_key
- full_date
- year
- quarter
- month
- weekday*/
CREATE SCHEMA dw;
GO

CREATE TABLE dw.dim_customer
(
    customer_key INT IDENTITY(1,1) PRIMARY KEY,
    customer_id NVARCHAR(50) NOT NULL,
    customer_unique_id NVARCHAR(50) NOT NULL,
    customer_city NVARCHAR(100),
    customer_state NVARCHAR(10)
);

INSERT INTO dw.dim_customer
(
    customer_id,
    customer_unique_id,
    customer_city,
    customer_state
)
SELECT
    customer_id,
    customer_unique_id,
    customer_city,
    customer_state
FROM clean.customers;

SELECT COUNT(*) FROM dw.dim_customer;

CREATE TABLE dw.dim_product
(
    product_key INT IDENTITY(1,1) PRIMARY KEY,
    product_id NVARCHAR(50) NOT NULL,
    product_category_name NVARCHAR(100),
    product_category_name_english NVARCHAR(100),
    product_name_length TINYINT,
    product_description_length SMALLINT,
    product_photos_qty TINYINT,
    product_weight_g INT,
    product_length_cm TINYINT,
    product_height_cm TINYINT,
    product_width_cm TINYINT
);

INSERT INTO dw.dim_product
(
    product_id,
    product_category_name,
    product_category_name_english,
    product_name_length,
    product_description_length,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
)
SELECT
    p.product_id,
    p.product_category_name,
    t.product_category_name_english,
    p.product_name_lenght,
    p.product_description_lenght,
    p.product_photos_qty,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm
FROM clean.products AS p
LEFT JOIN clean.product_category_name_translation AS t
    ON p.product_category_name = t.product_category_name;

INSERT INTO dw.dim_product
(
    product_id,
    product_category_name,
    product_category_name_english,
    product_name_length,
    product_description_length,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
)
SELECT
    p.product_id,
    p.product_category_name,
    t.product_category_name_english,
    p.product_name_lenght,
    p.product_description_lenght,
    p.product_photos_qty,
    p.product_weight_g,
    p.product_length_cm,
    p.product_height_cm,
    p.product_width_cm
FROM clean.products AS p
LEFT JOIN clean.product_category_name_translation AS t
ON p.product_category_name = t.product_category_name;

CREATE TABLE dw.dim_seller
(
    seller_key INT IDENTITY(1,1) PRIMARY KEY,
    seller_id NVARCHAR(50) NOT NULL,
    seller_city NVARCHAR(100),
    seller_state NVARCHAR(10)
);

SELECT TOP (20)
    date_key,
    full_date,
    year,
    month,
    month_name
FROM dw.dim_date;