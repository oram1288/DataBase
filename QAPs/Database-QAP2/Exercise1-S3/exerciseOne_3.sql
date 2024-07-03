-- Create Database for University Entities
CREATE DATABASE Things;

--T1
-- Create Students Table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    date_of_birth DATE NOT NULL,
    major character varying(100)
    university_id character varying(100) NOT NULL
    FOREIGN KEY (university_id) REFERENCES Universities(university_id)
);

--T2
-- Create Faculty Table
CREATE TABLE FacultyMember (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    department character varying(100) NOT NULL
    university_id character varying(100) NOT NULL
    FOREIGN KEY (gallery_id) REFERENCES Galleries(gallery_id)
);

-- Create University Table
CREATE TABLE Universities (
    university_id INT AUTO_INCREMENT PRIMARY KEY,
    university_name character varying(100) NOT NULL,
    university_address character varying(100) NOT NULL,
);


--T3
-- Create WorksOfArt Table
CREATE TABLE WorksOfArt (
    art_id INT AUTO_INCREMENT PRIMARY KEY,
    title character varying(100) NOT NULL,
    artist_name character varying(100) NOT NULL,
    year_created YEAR NOT NULL,
    gallery_id INT,
    FOREIGN KEY (gallery_id) REFERENCES Galleries(gallery_id)
);

-- Create Galleries Table
CREATE TABLE Galleries (
    gallery_id INT AUTO_INCREMENT PRIMARY KEY,
    gallery_name character varying(100) NOT NULL,
    location character varying(255) NOT NULL
);


--T4
-- Create Automobiles Table
CREATE TABLE Automobiles (
    vin character varying(17) PRIMARY KEY,
    make character varying(100) NOT NULL,
    model character varying(100) NOT NULL,
    year YEAR NOT NULL,
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES Owners(owner_id)
);

-- Create Owners Table
CREATE TABLE Owners (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_name character varying(100) NOT NULL,
    address character varying(255) NOT NULL
    email character varying(100) NOT NULL,
);


--T5
-- Create Pizzas Table
CREATE TABLE Pizzas (
    pizza_id INT AUTO_INCREMENT PRIMARY KEY,
    pizza_name character varying(100) NOT NULL,
    pizza_size character varying(50) NOT NULL,
    extras character varying(100) NOT NULL,
    price DECIMAL(5,2) NOT NULL
    restaurant_id INT,
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

-- Create Restaurants Table
CREATE TABLE Restaurants (
    restaurant_id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_name character varying(100) NOT NULL,
    restaurant_address character varying(100) NOT NULL
);


--T6
-- Create Furniture Table
CREATE TABLE Furniture (
    furniture_id INT AUTO_INCREMENT PRIMARY KEY,
    furniture_name character varying(100) NOT NULL,
    furniture_type character varying(100) NOT NULL,
    material character varying(100) NOT NULL,
    room character varying(100) NOT NULL
    price DECIMAL(5,2) NOT NULL,
    store_id INT,
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);

-- Create Stores Table
CREATE TABLE Stores (
    store_id INT AUTO_INCREMENT PRIMARY KEY,
    store_name character varying(100) NOT NULL,
    store_address character varying(100) NOT NULL
);