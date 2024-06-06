-- Create Database for Canada
CREATE DATABASE Canada;


-- Create Provinces Table
CREATE TABLE Provinces (
    province_id INT AUTO_INCREMENT PRIMARY KEY,
    province_name character varying(100) NOT NULL,
    province_abbreviation character varying(2) NOT NULL
);

-- Create Cities Table
CREATE TABLE Cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name character varying(100) NOT NULL,
    province_id INT,
    FOREIGN KEY (province_id) REFERENCES Provinces(province_id)
);

--Example:
-- Insert data example for Provinces table
INSERT INTO Provinces (province_name) VALUES ('British Columbia','BC');

-- Insert data example for Cities table
INSERT INTO Cities (city_name, province_id) VALUES ('Victoria', 1);
INSERT INTO Cities (city_name, province_id) VALUES ('Vancouver', 1);