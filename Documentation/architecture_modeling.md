NAME:AZABE BENINE
ID:28291


Business Process Overview
Regional Sales and Customer Insights System for LENOVO
Objective

The objective of this business process model is to illustrate how LENOVO sales and payment data flow through the system, from recording a sales transaction to automated payment tracking and analytical reporting.

The system uses PL/SQL procedures, functions, triggers, and analytical queries to support management in monitoring regional performance, customer behavior, product demand, and payment status, enabling informed business decisions.

Scope

The scope of this business process includes:

Recording customer sales transactions

Capturing customer and regional information

Tracking product sales and quantities

Recording customer payments and payment status

Automatically calculating totals and outstanding balances

Generating analytical and audit reports for management

This process covers the full lifecycle from sale creation to payment analysis and reporting.

Key Players (Entities)
Users

Customers: Individuals, retailers, wholesalers, and corporate clients purchasing LENOVO products

System (Database): Executes PL/SQL logic for calculations, validation, and analytics

Management / Administrators: Review reports for decision-making

Roles

Customer initiates purchase

System records and evaluates transactions

Management analyzes reports and trends

Data Sources

REGION – Defines geographical regions

CUSTOMERS – Stores customer details and categories

PRODUCTS – Contains laptop and accessory information

SALES – Records sales transactions

PAYMENT – Tracks payment details and status

MIS Relevance

This system functions as a Management Information System (MIS) by automating:

Sales data management

Payment tracking and validation

Regional and customer-based analytics

Decision support through structured reports

It transforms raw transactional data into useful managerial insights.

 Expected Outcomes

Accurate and centralized recording of sales and payments

Automatic calculation of total sales and outstanding balances

Identification of top-selling products and high-value customers

Improved regional sales visibility

Faster and more reliable management decision-making

Business Process Flow Description
Customer / Sales Flow

Start Event – Customer initiates a purchase

Select Product – Customer chooses a LENOVO laptop or accessory

Create Sale Record – Sale is recorded with quantity and region

Process Payment – Customer makes payment using a selected method

End Event – Transaction completes

System (Database) Flow

Record Sale in SALES Table

Calculates total amount automatically

Links customer, product, and region

Record Payment in PAYMENT Table

Stores payment method and amount

Assigns payment status (Paid, Pending, Partial)

Automated Validation & Calculations

Enforces constraints and data integrity

Computes totals and aggregates

Analytics & Reporting

Identifies top products by region

Detects high-value customers

Summarizes payment trends and balances

Data Flows

Sales Data flows from Customer to System

Payment Data flows from Customer to System

Reports & Analytics flow from System to Management

 MIS Functions
1. Data Collection

Captures customer demographics

Stores product details and pricing

Records sales and payments with timestamps

2. Automated Analysis

Regional sales aggregation

Customer spending analysis

Product performance evaluation

Payment status monitoring

3. Reporting

Top-selling products by region

Customers with highest purchases

Payment summaries and outstanding balances

4. Decision Support

Inventory allocation decisions

Regional marketing strategies

Financial planning and forecasting

Organizational Impact
Benefits for LENOVO Management

Improved Decision-Making

Clear visibility of regional sales performance

Identification of profitable customers and products

Operational Efficiency

Eliminates manual spreadsheets

Reduces errors in sales and payment tracking

Financial Control

Accurate monitoring of payments and balances

Faster detection of unpaid or partial payments

Analytics Opportunities
1. Product Analytics

Identify top-selling laptops and accessories

Detect low-performing products

2. Customer Analytics

Rank customers by total purchases

Segment customers by category and region

3. Regional Analytics

Compare sales performance across regions

Support targeted regional promotions

4. Financial Analytics

Analyze payment methods usage

Monitor outstanding balances and cash flow

Technical Implementation
Database Tables Used

REGION

CUSTOMERS

PRODUCTS

SALES

PAYMENT

Automation Components

PL/SQL procedures for recording sales and payments

Functions for analytical insights

Constraints for data validation

SQL analytics and audit queries

🧾 Conclusion

The Regional Sales and Customer Insights System for LENOVO transforms sales and payment data into a structured, automated Management Information System.
