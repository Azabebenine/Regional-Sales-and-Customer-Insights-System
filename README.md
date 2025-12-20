

Business Process Scenario Description

The business process begins when a customer, such as a retailer operating in the Kigali region, visits a LENOVO outlet to purchase laptops or computer accessories. The customer specifies the product type and quantity required, which triggers the start of the sales process. This initial interaction represents the customer swimlane in the BPMN diagram and marks the formal initiation of the transaction.

Once the order is placed, the Sales Department receives the customer’s request. A sales clerk records the order details into the system, including customer information, selected product, region, and quantity sold. This step ensures that all sales transactions are captured in a standardized and structured manner before being processed by the Management Information System.

The MIS, implemented using a PL/SQL-based system, validates the customer and product data against the existing database. The system retrieves the unit price of the selected product and automatically calculates the total sales amount based on the quantity sold. After validation and calculation, the transaction is stored in the SALES table, ensuring data accuracy and centralized record keeping.

Following the sales entry, the customer proceeds to make a payment using an available method such as cash, card, mobile banking, or online transfer. The Finance Department receives the payment and records the payment details, including the payment method and amount paid. This information is then sent to the MIS for further processing and storage in the PAYMENTS table.

At this stage, the MIS system evaluates whether the payment made is complete. If the full amount has been paid, the system updates the payment status to “Paid.” If only part of the amount has been settled, the payment status is marked as “Partial” or “Pending.” This decision point is critical for financial control and ensures accurate tracking of outstanding balances.

After processing sales and payment data, the MIS generates analytical reports that summarize regional sales performance, top-selling products, high-value customers, and payment statuses. These reports transform operational data into meaningful information for management use. The reports are then made available to management for review.

Finally, LENOVO management analyzes the generated reports to support strategic decision-making. Based on the insights provided, management can adjust inventory levels, design targeted marketing campaigns, follow up on pending payments, and plan future regional sales strategies. This marks the end of the business process, demonstrating how the MIS supports operational efficiency and informed managerial decisions.
