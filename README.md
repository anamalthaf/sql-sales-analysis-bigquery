# SQL Sales Performance Analysis

## Project Overview
This project uses SQL to analyze sales transaction data and answer key business questions related to revenue performance, customer behavior, and growth trends.

The analysis focuses on generating actionable insights that support business reporting and decision-making.

---

## Business Objective
To help stakeholders:
- Understand overall sales performance
- Track revenue and order trends over time
- Identify top-performing products and customers
- Support KPI reporting and dashboard development

---

## Dataset Description
The dataset represents transactional sales data commonly found in e-commerce and retail environments.

**Key fields include:**
- Order ID
- Order Date
- Customer ID
- Product
- Quantity
- Revenue

---

## Business Questions Answered
- What is the total revenue and total number of orders?
- How does revenue trend month-over-month?
- What is the average order value (AOV)?
- Which products contribute the most to revenue?
- How does cumulative revenue grow over time?

---

## Key Metrics Calculated
- Total Revenue
- Total Orders
- Average Order Value (AOV)
- Monthly Revenue
- Month-over-Month Growth
- Running Total Revenue

---

## Sample SQL Queries

### Total Revenue
```sql
SELECT 
    SUM(revenue) AS total_revenue
FROM sales;
```

## Key Business Questions & Insights

### 1. Overall Sales KPIs
**Question:** What are the total orders, revenue, and average order value?

![Overall KPIs](screenshots/sql_query_1_overall_kpis.png)

**Insight:** Provides a high-level snapshot of business performance for leadership reporting.

### 2. Monthly Revenue Trend
**Question:** How has revenue changed over time?

![Monthly Revenue Trend](screenshots/sql_query_2_monthly_revenue_trend.png)

**Insight:** Identifies growth trends and seasonality patterns in sales.

### 3. Revenue by Product Category
**Question:** Which product categories generate the most revenue?

![Revenue by Category](screenshots/sql_query_3_revenue_by_category.png)

**Insight:** Helps prioritize high-performing categories for inventory and marketing decisions.

### 4. Top 10 Customers by Spend
**Question:** Who are the highest-value customers?

![Top Customers](screenshots/sql_query_4_top_10_products_revenue.png)

**Insight:** Useful for loyalty programs and targeted retention strategies.

### 5. New vs Repeat Customers
**Question:** How does revenue differ between new and repeat customers?

![New vs Repeat Customers](screenshots/sql_query_5_new_vs_repeat_customers.png)

**Insight:** Shows the importance of repeat customers to total revenue.

### 6. Running Total Revenue
**Question:** How does cumulative revenue grow over time?

![Running Total Revenue](screenshots/sql_query_6_running_total_revenue.png)

**Insight:** Demonstrates long-term revenue growth and business scaling.

## Tools & Technologies
- SQL (BigQuery / Standard SQL)
- Google BigQuery (Query execution)
- GitHub (Version control and documentation)

---

## Key Insights (Example)
- Revenue demonstrates a steady upward trend over time.
- A small number of products contribute a significant portion of total revenue.
- Running total analysis highlights consistent business growth.
- AOV helps evaluate customer purchasing behavior.

---

## How This Analysis Supports Business Decisions
- Enables performance tracking through KPIs
- Supports sales forecasting and trend analysis
- Provides a foundation for dashboard reporting in Power BI or Excel

---

## Future Improvements
- Customer segmentation (new vs repeat customers)
- Profitability analysis
- Regional performance comparison
- Integration with visualization tools

---

## Author
Anam Althaf
Aspiring Junior Data Analyst
