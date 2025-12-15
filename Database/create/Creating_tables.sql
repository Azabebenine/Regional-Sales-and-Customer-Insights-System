CREATE TABLE REGION (
    region_id     NUMBER(5)       PRIMARY KEY,
    region_name   VARCHAR2(50)   NOT NULL
);


CREATE TABLE PRODUCTS (
    product_id NUMBER(5) PRIMARY KEY,
    product_name VARCHAR2(50) NOT NULL,
    category VARCHAR2(30) CHECK (category IN ('Laptop', 'Accessory', 'Spare Part')),
    unit_price NUMBER(10,2) NOT NULL
);


CREATE TABLE PAYMENT (
    payment_id NUMBER(10) PRIMARY KEY,
    sale_id NUMBER(10) NOT NULL,
    payment_date DATE DEFAULT SYSDATE,
    payment_method VARCHAR2(20),
    amount_paid NUMBER(12,2),
    payment_status VARCHAR2(20) DEFAULT 'Pending',
    CONSTRAINT fk_payment_sale_new FOREIGN KEY (sale_id)
        REFERENCES SALE(sale_id),
    CONSTRAINT chk_payment_method_new CHECK (payment_method IN ('Cash', 'Card', 'Mobile Banking', 'Online Transfer')),
    CONSTRAINT chk_payment_status_new CHECK (payment_status IN ('Paid', 'Pending', 'Partial')),
    CONSTRAINT chk_amount_paid_new CHECK (amount_paid >= 0)
);



CREATE TABLE SALE (
    sale_id NUMBER(10) PRIMARY KEY,
    customer_id NUMBER(6),
    product_id NUMBER(5),
    region_id NUMBER(5),
    sale_date DATE DEFAULT SYSDATE,
    quantity NUMBER(10,2),
    total_amount NUMBER(12,2),
    CONSTRAINT fk_sale_customer_new FOREIGN KEY (customer_id)
        REFERENCES CUSTOMERS(customer_id),
    CONSTRAINT fk_sale_product_new FOREIGN KEY (product_id)
        REFERENCES PRODUCTS(product_id),
    CONSTRAINT fk_sale_region_new FOREIGN KEY (region_id)
        REFERENCES REGION(region_id)
);



CREATE TABLE CUSTOMERS (
    customer_id NUMBER(6) PRIMARY KEY,
    customer_name VARCHAR2(60) NOT NULL,
    region_id NUMBER(5) NOT NULL,
    contact_number VARCHAR2(20),
    category VARCHAR2(30) CHECK (category IN ('Individual', 'Retailer', 'Wholesaler', 'Corporate')),
    CONSTRAINT fk_customers_region FOREIGN KEY (region_id)
        REFERENCES REGION(region_id)
);
