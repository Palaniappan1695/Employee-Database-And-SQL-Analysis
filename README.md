🏢 Employee Database & SQL Analytics

📌 Project Overview

A MySQL-based employee management database project focused on relational database design, data retrieval, and analytical querying.

This project demonstrates how SQL can transform structured employee information into meaningful business insights through filtering, aggregation, joins, and window functions.

The database represents a company's employee management system, containing employee records, departmental information, and office locations.

🎯 Project Objectives

🗄️ Understand relational database structures.

🔍 Retrieve and filter employee information using SQL.

📊 Perform aggregations and grouped analysis.

🔗 Establish relationships between database tables.

🧮 Apply window functions for ranking and cumulative calculations.

💼 Translate business requirements into practical SQL queries.

🏗️ Database Architecture

The database consists of three relational tables:

Table

Description

👨‍💼 Employee

Employee details, salary, designation, department, and location.

🏢 Department

Department IDs and department names.

📍 Location

Location IDs and office location names.

🔗 Table Relationships

Employee.Department_ID → Department.Department_ID

Employee.Location_ID → Location.Location_ID

Primary keys and foreign keys maintain relationships and data integrity across the tables.

🛠️ SQL Concepts Implemented

🔹 1. Data Retrieval & Filtering

SELECT

DISTINCT

Column Aliases

WHERE

ORDER BY

LIMIT

🔹 2. Aggregate Functions

COUNT()

SUM()

AVG()

MIN()

MAX()

🔹 3. Grouping & Conditional Analysis

GROUP BY

HAVING

LIKE

IS NULL

🔹 4. SQL Joins

INNER JOIN

LEFT JOIN

RIGHT JOIN

CROSS JOIN

SELF JOIN

🔹 5. Window Functions

RANK()

DENSE_RANK()

SUM() OVER()

PARTITION BY

ORDER BY within window functions

📊 Business Analysis & Use Cases

Business Question

SQL Technique

💰 Identify distinct salary values

DISTINCT

🔎 Find employees earning above a specified salary

WHERE

💵 Calculate total salary expenditure in Finance

SUM()

👤 Identify the youngest employee

MIN()

🏢 Find maximum salary by location

GROUP BY, MAX()

📈 Calculate average salary by designation

AVG(), GROUP BY

👥 Identify departments with fewer than three employees

HAVING

📍 Analyse female employee age by location

AVG(), GROUP BY, HAVING

🔗 Combine employee and department information

INNER JOIN

📋 Count employees in every department

LEFT JOIN, COUNT()

🌍 Generate department-location combinations

CROSS JOIN

🥇 Rank employees by salary

RANK(), DENSE_RANK()

📊 Calculate running salary totals by department

SUM() OVER()

🧮 Window Function Analysis

Window functions help perform calculations across related rows without collapsing individual employee records.

The project explores:

🥇 Salary Ranking: Rank employees from highest to lowest salary.

🏢 Department-wise Ranking: Rank employees separately within each department.

📈 Running Total: Calculate cumulative salary totals within departments.

💻 Tools & Technologies

Technology

Purpose

🐬 MySQL

Relational database management

🛠️ MySQL Workbench

SQL development and query execution

📸 Query Execution & Results

The Screenshots directory contains MySQL Workbench query executions and their corresponding result grids, organized by SQL concept.

This provides a visual reference for the queries and their outputs.

🚀 Key Takeaways

Developed an understanding of relational database design.

Practised SQL querying against structured business data.

Explored different JOIN operations and their applications.

Applied aggregate functions for business-oriented analysis.

Used window functions for ranking and cumulative calculations.

Improved the ability to convert business questions into SQL queries.

👨‍💻 Project Information

Project: Employee Database & SQL Analytics
Database: MySQL
Language: SQL
Environment: MySQL Workbench

💾 SQL

Database querying and analysis
