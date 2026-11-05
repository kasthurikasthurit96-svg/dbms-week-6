
# Week 6 – Product Review and Rating Management System

## Project Overview
This project focuses on collecting and managing customer feedback about products in an e-commerce database. Customers can provide ratings and reviews for products. The system stores customer opinions, analyzes product performance, and identifies highly rated products using MySQL.

## Objectives
- Create Review and Rating tables.
- Establish relationships between Customer, Product, and Review tables.
- Store customer feedback and ratings.
- Retrieve product review details.
- Calculate average product ratings.
- Identify highly rated products.
- Generate customer feedback and rating reports.

## Database
Database Name: ecommerceD__B

## Review Table Attributes
- Review_ID – Unique review identifier.
- Customer_ID – Customer reference.
- Product_ID – Product reference.
- Rating – Product rating from 1 to 5.
- Review_Text – Customer comments.
- Review_Date – Date of review.

## Relationships
- One customer can write multiple reviews.
- Each review belongs to one customer.
- One product can have multiple reviews.
- Each review belongs to one product.

## Constraints Used
- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- CHECK (Rating BETWEEN 1 AND 5)

## SQL Concepts Used
- CREATE TABLE
- INSERT INTO
- SELECT
- UPDATE
- DELETE
- WHERE
- JOIN
- GROUP BY
- ORDER BY
- AVG()
- COUNT()
- MAX()

## Reports Generated
1. Product Review Details
2. Customer Review History
3. Average Product Rating
4. Most Reviewed Products
5. Highly Rated Products
6. Rating Distribution
7. Customer Feedback Analysis

## Tools Used
- MySQL
- MySQL Workbench
- SQL

## How to Execute
1. Open MySQL Workbench.
2. Connect to the MySQL server.
3. Select the ecommerceD__B database.
4. Open the Week6_Product_Review.sql file.
5. Execute the queries one by one.
6. Verify the results in the Result Grid.

## Conclusion
This project demonstrates how SQL can be used to manage customer reviews, store product ratings, and analyze customer feedback in an e-commerce database.
