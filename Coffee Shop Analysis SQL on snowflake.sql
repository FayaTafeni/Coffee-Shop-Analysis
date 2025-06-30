SELECT COUNT(transaction_id) AS number_of_sales
FROM "COFFEE_BEAN"."SHOP"."SALES" 

SELECT SUM(transaction_qty) AS number_of_units_sold
FROM "COFFEE_BEAN"."SHOP"."SALES" 

SELECT transaction_qty*unit_price AS revenue_per_transaction
FROM "COFFEE_BEAN"."SHOP"."SALES" 

SELECT SUM(transaction_qty*unit_price) AS total_revenue
FROM "COFFEE_BEAN"."SHOP"."SALES" 

SELECT SUM(transaction_qty*unit_price) AS total_revenue,
       product_category
FROM "COFFEE_BEAN"."SHOP"."SALES"
GROUP BY product_category
ORDER BY total_revenue DESC;

SELECT 
       SUM(transaction_qty*unit_price) AS total_revenue,
       SUM(transaction_qty) AS number_of_units_sold,
       COUNT(transaction_id) AS number_of_sales,       
       TO_CHAR(transaction_date,'YYYYMM') AS month_id,
       MONTHNAME(transaction_date) AS month_name,
       DAYNAME(transaction_date) AS day_name,   
   CASE
        WHEN transaction_time BETWEEN '06:59:59' AND '11:59:59' THEN 'Morning'
        WHEN transaction_time BETWEEN '06:59:59' AND '15:59:59' THEN 'Afternoon'
        WHEN transaction_time BETWEEN '06:59:59' AND '20:59:59' THEN 'Evening'
        ELSE 'Night'
END AS time_bucket,
   CASE
        WHEN SUM(transaction_qty*unit_price) BETWEEN 0 AND 20 THEN 'Low'
        WHEN SUM(transaction_qty*unit_price) BETWEEN 21 AND 40 THEN 'Med'
        WHEN SUM(transaction_qty*unit_price) BETWEEN 41 AND 60 THEN 'Low'
        ELSE 'Very High'
END AS spend_bands,
       product_category,
       product_type,
       product_detail 
FROM "COFFEE_BEAN"."SHOP"."SALES"
GROUP BY time_bucket,
         product_category,
         product_type,
         product_detail,
         month_id,
         month_name,
         day_name         
ORDER BY total_revenue DESC;

        



        

