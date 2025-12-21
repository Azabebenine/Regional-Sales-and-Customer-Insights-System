#  PLSQL Capstone Project: Regional Sales & Customer Management System

**Course:** Advanced PL/SQL  
**Student Name:** Benine  
**Student ID:** 28291  
**Group:** Tuesday  
**Database:** Oracle (Pluggable Database – PDB)

---

##  Project Overview

This project implements a **Regional Sales and Customer Management System** using Oracle SQL and PL/SQL.  
The system is designed to store, manage, and analyze customer and regional data to support **Business Intelligence (BI) reporting** and decision-making.

The database follows **relational and BI best practices**, including:

- Proper primary and foreign key relationships
- Clear separation of master (dimension) data
- Readiness for future fact tables and analytics

---

##  Objectives

- Design and implement a relational database using Oracle
- Enforce data integrity using primary and foreign keys
- Support BI analysis by organizing data by region and customer category
- Prepare the system for future extensions (sales, products, reporting)

---

##  Database Architecture

The database is created inside an Oracle Pluggable Database (PDB) following the naming convention:


The schema contains **core dimension tables** used in analytical systems.

---

##  Tables Implemented

### REGION Table

Stores geographical regions.  

**Columns:**  
- `region_id` – Unique region ID (Primary Key)  
- `region_name` – Region name (Kigali, Southern, Eastern, etc.)

---

### CUSTOMERS Table

Stores customer information and links customers to regions.  

**Columns:**  
- `customer_id` – Unique customer ID (Primary Key)  
- `customer_name` – Full customer name  
- `region_id` – References `REGION(region_id)`  
- `contact_number` – Phone number  
- `category` – Individual, Retailer, Wholesaler, Corporate

---

##  Relationships

- One `REGION` → Many `CUSTOMERS`  
- Enforced using a **foreign key constraint**  
- Prevents customers from being assigned to non-existent regions

---

##  Business Intelligence Considerations

- `REGION` and `CUSTOMERS` act as **dimension tables**  
- Customer category supports **segmentation analysis**  
- Region-based analysis enables:
  - Sales by region (future extension)
  - Customer distribution reporting  
- Design supports **future fact tables** such as `SALES` or `ORDERS`

---

##  Data Integrity & Constraints

- Primary keys ensure **uniqueness**  
- Foreign keys ensure **referential integrity**  
- NOT NULL constraints enforce **required fields**  
- Schema-based ownership ensures **security**

---

##  Sample Query Usage

- View all customers:  
```sql
SELECT * FROM CUSTOMERS;
```
## Assumptions

Oracle 21c or higher is used

User has privileges to create tables

REGION table is created before CUSTOMERS

This project is for academic purposes

## Future Enhancements

Add PRODUCTS table

Add SALES fact table

Implement PL/SQL procedures

Add audit logging

Create BI reports and dashboards

## Conclusion

This project demonstrates a solid understanding of Oracle SQL, relational design, and BI principles.
It forms a strong foundation for enterprise-level analytics and future PL/SQL development.

