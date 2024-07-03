-- Create Database for University
CREATE DATABASE University;


-- Create Students Table
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);

-- Create Classes Table
CREATE TABLE Classes (
    class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name character varying(100) NOT NULL,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

-- Create Instructors Table
CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    instructor_name character varying(100) NOT NULL,
    instructor_email character varying(100) NOT NULL
);

-- Create Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    grade character varying(3),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (class_id) REFERENCES Classes(class_id)
);