# E-commerce-dataset-with-Orders-Customers-tables
The objective of this project is to perform end-to-end data analysis on an E-Commerce dataset using MySQL, focusing on Customers and Orders data. The project demonstrates practical SQL skills such as database design, joins, filtering, aggregation, data export, and business insight generation.

This task focuses on analyzing an E-Commerce dataset using MySQL, specifically working with Customers and Orders tables. The objective is to design a structured database, apply SQL joins to combine related data, and perform business-oriented analysis.

The task includes loading data with proper primary and foreign key relationships, using INNER JOIN to analyze customer orders, and LEFT JOIN to identify customers who have not made any purchases. Revenue and regional sales analysis are performed using aggregation and filtering techniques. The final outputs are exported as CSV files, and key business insights are documented to support data-driven decision-making.

Task Overview :- 

-- Database & Table Setup :
The project begins by loading the E-Commerce dataset into MySQL by creating structured tables for customers and orders. Primary keys and foreign keys are properly defined to maintain data integrity and establish a one-to-many relationship between customers and their orders.

-- Data Integration Using Joins :
INNER JOIN queries are written to combine order records with customer details, enabling analysis of purchasing behavior. The correctness of joins is validated by matching record counts with the base orders table.

-- Customer Behavior Analysis :
LEFT JOIN queries are used to identify customers who have never placed an order. These non-transacting customers are critical from a business perspective, especially for marketing, promotions, and customer re-engagement strategies.

-- Revenue & Performance Analysis : 
Aggregation functions are applied on joined tables to calculate total revenue at customer and regional levels. This helps identify high-value customers and regions contributing the most to overall sales.

-- Business-Driven Filtering :
WHERE conditions combined with JOINs are used to answer real-world business questions such as sales performance in a specific region within a given time period.

-- Professional SQL Practices :
Table aliases are consistently used to improve query readability, scalability, and maintain professional coding standards expected in industry environments.

-- Data Export for Reporting :
Final joined outputs are exported into CSV format, making the data ready for reporting, visualization, or further analysis in tools like Excel or Power BI.

Insight Generation
Based on the analyzed data, key business insights are documented, highlighting revenue concentration, regional performance, and customer engagement opportunities.

Project Organization
All working SQL queries are stored in a single, well-commented SQL file, along with separate output and insights files, ensuring a clean and professional project structure.
