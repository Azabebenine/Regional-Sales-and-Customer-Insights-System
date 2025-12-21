<img width="399" height="369" alt="BPMN PIC" src="https://github.com/user-attachments/assets/206c4530-f1c2-46f5-a171-ee617f55b43b" />



step-by-Step Scenario Execution


Step 1: Customer Places an Order

A retailer located in Kigali region visits a LENOVO sales outlet and requests:

Product: Lenovo ThinkPad Laptop

Quantity: 5 units

This action starts the business process.

Step 2: Sales Department Records the Order

The Sales Clerk receives the order and:

Identifies the customer in the system

Selects the product and region

Enters quantity sold

The Sales Clerk submits the information to the MIS system.

Step 3: MIS System Processes the Sale

The PL/SQL system:

Validates customer and product details

Retrieves the unit price from the PRODUCT table

Automatically calculates the total amount

Stores the transaction in the SALES table

This ensures accurate and centralized sales records.

Step 4: Customer Makes Payment

The customer pays part of the amount using mobile banking.

The Finance Department:

Receives the payment

Records the payment method and amount

Sends payment data to the MIS system

Step 5: Payment Validation (Decision Point)

The MIS system evaluates the payment:

Decision: Is payment complete?

Since only partial payment was made, the system sets the status to “Partial”

Payment details are stored in the PAYMENTS table

This decision gateway is a key control point in the process.

Step 6: Analytical Report Generation

At the end of the day, the MIS system:

Aggregates sales by region

Identifies top-selling products

Calculates total customer purchases

Detects outstanding balances

A regional sales and payment report is automatically generated.

Step 7: Management Reviews Reports

LENOVO management reviews the report and discovers:

Kigali region has the highest laptop sales

This retailer is among the top revenue-generating customers

Some payments are still pending

Step 8: Business Decisions Made

Based on the insights:

Management increases laptop inventory in Kigali

Finance follows up on pending payments

Marketing targets high-value customers with promotions

This ends the business process.

MIS Value Demonstrated in the Scenario

Operational Efficiency: Automated calculations and validations

Control: Clear payment status tracking

Decision Support: Data-driven regional and customer insights

Strategic Impact: Better inventory, marketing, and financial planning
