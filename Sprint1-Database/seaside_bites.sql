
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

-- Kyle
-- Create Order Item Table
create table orderItem(
	orderItemID serial not NULL,
	quantity int not NUll,
	price double not NULL,
	menu_item_id int not NULL,
	primary key(orderItemID),
	foreign key(menu_item_id) references menu_item(menu_item_id)
);

-- Create Promtion Table
create table promtion(
	promtionID serial not NULL,
	discountCode char varying(25) not NULL,
	experationDate char varying(20) not NULL,
	primary key(promtionID)
);

-- Create SalesReport Table
create table salesReport(
	salesReportId serial not NULL,
	revenue double not null,
	bestSellers char varying(30),
	customerPrefences char varying(50),
	primary key(salesReportID)		
);

-- Reagan
-- Create DeliveryAddress Table
CREATE TABLE DeliveryAddress (
    AddressID SERIAL PRIMARY KEY,
    customer_id INT ,
    Street VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Province VARCHAR(100) NOT NULL,
    ZipCode VARCHAR(10) NOT NULL,
    Country VARCHAR(100) NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

-- Create ShoppingCart Table
CREATE TABLE ShoppingCart (
    CartID SERIAL PRIMARY KEY,
    customer_id SERIAL PRIMARY KEY,
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    TotalAmount DECIMAL(10, 2) NOT NULL
);

-- Create Ingredients Table
CREATE TABLE Ingredients (
    IngredientID SERIAL PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    QuantityInStock DECIMAL(10, 2) NOT NULL,
    Unit VARCHAR(50) NOT NULL
);
 
