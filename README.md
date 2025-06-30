# ☕ Bright Coffee Shop Sales Analysis (BRIGHTLIGHT)

This project provides a comprehensive sales analysis of the Bright Coffee Shop, aimed at helping the newly appointed CEO make data-driven decisions to improve revenue and product performance. It utilizes SQL for data processing, Excel for visualization, and Canva for delivering strategic insights.

## 📌 Objective

To answer the following business questions:
- Which products generate the most revenue?
- What time of day does the store perform best?
- What are the sales trends across product types and time intervals?
- What actions can improve overall sales performance?

## 🛠 Tools Used

- **SQL Platforms**: Snowflake
- **Data Visualization**: Microsoft Excel
- **Planning & Design**: Miro, Canva
- **Presentation**: Canva

## 🔍 Analysis Workflow

### 1. Planning & Architecture (via Miro)
- Data Flow Diagram: Source → ETL → Snowflake DB → Excel/BI Tool
- Key insights identified: product/category performance, time-based trends, revenue analysis
- Calculations outlined:
  - `total_amount = unit_price * transaction_qty`
  - Grouping by 30-minute (or 1-hour) intervals

### 2. Data Processing in Snowflake
- Converted Excel data to CSV
- Handled formatting (e.g., commas in unit prices)
- Calculated:
  - `transaction_time_bucket`
  - `total_amount`
- Grouped data by product types, categories, time buckets

### 3. Data Analysis in Excel
- Created dashboards with:
  - Total revenue by product type
  - Peak time intervals
  - Quantity sold by category
  - Best-performing products

### 4. Presentation to the CEO
- Delivered in PowerPoint with clear visuals
- Key recommendations:
  - Schedule marketing during low-sales periods
  - Increase stock for bestsellers
  - Promote underperforming items
  - Implement loyalty programs
  - Automate daily sales reporting

## ✅ Deliverables

- [x] Miro Planning Diagram
- [x] Cleaned & Transformed Dataset
- [x] SQL Code for Data Transformation
- [x] Dashboards (Excel)
- [x] Executive Presentation
- [x] Methodology Document
