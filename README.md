# 🍽️ Restaurant Sales Analysis — SQL

## Project Overview
A structured SQL analysis of restaurant sales data designed to uncover key business insights around revenue, customer behavior, staff performance, and menu popularity. This project simulates the kind of operational reporting a data analyst would produce for a food & beverage business.

## Tools Used
- Microsoft SQL Server (SSMS)
- SQL (JOINs, Aggregations, GROUP BY, DATEPART, UPDATE)

## Database Structure
Three related tables:
- **Menu_items** — item names, categories, and prices
- **Orders** — order dates, times, staff, and table numbers
- **Order_details** — links orders to menu items with quantities

## Business Questions Answered

| # | Question | Key Finding |
|---|---|---|
| 1 | What are total sales by date? | Revenue tracked across 6 days |
| 2 | Which menu category drives most revenue? | Main Course is the top revenue driver |
| 3 | Who are the top performing staff? | Performance ranked by revenue generated |
| 4 | What are the peak hours for orders? | 12 noon is the busiest hour |
| 5 | Which items are most & least popular? | Beef Burger = most popular, Ice Cream = least |
| 6 | What is the average order value? | KES 2,360 per order across 15 orders |

## Key Insights
- **Main Course** category generates the highest revenue — ideal for upselling strategies
- **Lunchtime (12 noon)** is peak trading hour — staffing should be maximized at this time
- **Beef Burger** is the star menu item — strong candidate for meal deal promotions
- **Ice Cream** underperforms — consider bundling with popular mains to boost sales
- **Average order value of KES 2,360** provides a baseline for revenue targeting

## Skills Demonstrated
- Multi-table JOINs across 3 related tables
- Aggregate functions (SUM, COUNT, AVG)
- GROUP BY and ORDER BY for ranked analysis
- DATEPART for time-based analysis
- Data cleaning using UPDATE statements


