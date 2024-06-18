
-- Create Menu Table
CREATE TABLE Menu_Item (
    menu_item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name character varying(100),
    item_description TEXT,
    item_price DECIMAL(10, 2),
    item_availability BOOLEAN
);

-- Create Customer Table
CREATE TABLE Customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name character varying(100),
    address character varying(255),
    phone_number character varying(15),
    email character varying(100)
);

-- Create Order Table
CREATE TABLE Order (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_idustomerID) REFERENCES Customer(customer_id)
);