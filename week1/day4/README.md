# SQL Window Functions and CTE Assignment Report

## Overview
This assignment demonstrates advanced SQL concepts using a sample database containing employees, customers, and orders. The main focus is on Window Functions and Common Table Expressions (CTEs), which are used to perform analytical operations efficiently.


## Objective
The goal of this assignment is to understand how to:
- Perform ranking and ordering operations using window functions
- Analyze data using partitions and aggregates
- Track changes across rows using LAG and LEAD functions
- Generate running totals and moving averages
- Solve complex queries using CTEs
- Work with recursive queries for hierarchical and sequential data



## Key Concepts Covered

### 1. Ranking Functions
Used to assign ranks to rows based on conditions such as salary or sales:
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- NTILE()

These functions help in ranking employees, customers, and orders based on different criteria.


### 2. Aggregate Window Functions
Used to perform calculations across rows without collapsing the result set:
- SUM() OVER()
- AVG() OVER()
- COUNT() OVER()
- MAX() OVER()

These are useful for calculating department-level statistics and overall summaries.



### 3. Analytical Functions
Used to compare rows within a dataset:
- LAG() → Previous row value
- LEAD() → Next row value

These help in tracking changes in order amounts over time.



### 4. Running and Moving Calculations
- Running total of orders
- Cumulative sales per employee
- Moving average of recent orders

These functions are essential for time-series and trend analysis.



### 5. Partitioning Data
Using PARTITION BY, data is grouped logically (e.g., by department or customer) to perform independent calculations within each group.



### 6. Common Table Expressions (CTEs)
CTEs are used to simplify complex queries by breaking them into reusable temporary result sets.

They are used for:
- Calculating total sales per employee
- Finding employees above average performance
- Ranking customers based on spending


### 7. Recursive CTEs
Used for hierarchical or sequential data:
- Generating numbers (1 to 10)
- Displaying employee reporting structure


## Key Insights from the Data

- Employees can be ranked based on salary and department performance
- Sales performance can be tracked per employee and customer
- Order trends can be analyzed using running totals and moving averages
- Hierarchical relationships (manager → employee) can be represented using recursion
- CTEs simplify complex multi-step analytical queries

This assignment provides a strong understanding of advanced SQL analytical features. Window functions allow row-level analysis without aggregation, while CTEs make complex queries easier to read and maintain.

Together, they are powerful tools for real-world data analysis and reporting systems.
