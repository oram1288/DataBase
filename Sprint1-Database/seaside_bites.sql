
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
 

-- Insert into Promotion

INSERT INTO promotion (promtionID, discountCode, experationDate) VALUES
(1,'SCHOOLSOUT', '2024-06-21');
(2,'SUMMER24', '2024-07-01');
(3,'FISH', '2024-08-15');
(4,'BOO', '2024-10-31'),
(5,'HOHOHO', '2024-12-23');


-- Insert into Sales_Report

INSERT INTO salesReport (salesReportId, revenue, bestSellers, customerPreferences) VALUES
(1, 500.00, 'Fish & Chips', 'Fish & Chips, Shrimp');
(2, 500.00, 'Shrimp', 'Shrimp, Fish & Chips');
(3, 500.00, 'Cod Bites', 'Cod Bites, Shrimp');
(4, 500.00, 'Fish & Chips', 'Fish & Chips, Shrimp');
(5, 500.00, 'Cod Bites', 'Cod Bites, Salmon');


-- Insert into Shopping_Cart

INSERT INTO ShoppingCart (CartID, customer_id, CreatedDate, TotalAmount) VALUES
(1, 1, '2024-06-15', 50.00),
(2, 2, '2024-06-18', 35.00);
(3, 3, '2024-06-24', 115.00);
(4, 4, '2024-06-18', 75.00);
(5, 5, '2024-06-21', 90.00);
(6, 6, '2024-06-18', 50.00);
(7, 7, '2024-06-12', 80.00);
(8, 8, '2024-06-19', 30.00);
(9, 9, '2024-06-20', 120.00);
(10, 10, '2024-06-24', 40.00);


-- Insert into Delivery_Address

INSERT INTO DeliveryAddress (AddressID, customer_id, Street, City, Province, ZipCode, Country) VALUES
(1, 1, '123 Ocean Drive', 'St.Johns', 'NL', 'A1N9H5', 'Canada'),
(2, 2, '456 Beach Blvd', 'Mount Pearl', 'NL', 'A1N5S7', 'Canada');
(3, 3, '34 Maple Drive', 'St.Johns', 'NL', 'A1N9J6', 'Canada');
(4, 4, '88 First Street', 'Paradise', 'NL', 'A1N4D9', 'Canada');
(5, 5, '87 River Blvd', 'St.Johns', 'NL', 'A1N2B9', 'Canada');
(6, 6, '16 Toronto Drive', 'St.Johns', 'NL', 'A1N7V5', 'Canada');
(7, 7, '11 Morgan Drive', 'Mount Pearl', 'NL', 'A1N2B9', 'Canada');
(8, 8, '443 Beach Blvd', 'St.Johns', 'NL', 'A1N8B3', 'Canada');
(9, 9, '23 Fourth Street', 'Paradise', 'NL', 'A1N0B3', 'Canada');
(10, 10, '99 Fifth Street', 'Paradise', 'NL', 'A1N5H7', 'Canada');


-- Insert into Ingredient

INSERT INTO Ingredients (IngredientID, Name, QuantityInStock, Unit) VALUES
(1, 'Fish & Chips', 50, 3),
(2, 'Potato', 200, 4),
(3, 'Shrimp', 50, 4);
(4, 'Fries', 100, 3);
(5, 'Salmon', 50, 3);
(6, 'Onion Rings', 150, 3);
(7, 'Gravy', 40, 5);
(8, 'Dressing', 40, 5);
(9, 'Tartar Sauce', 300, 6);
(10, 'Cod Bites', 50, 3);
