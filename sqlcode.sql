CREATE DATABASE IF NOT EXISTS Studentdb;
USE studentdb;

CREATE TABLE Student (
    First_name VARCHAR(50), -- Adjusted the length to accommodate longer names
    Second_name VARCHAR(50), -- Adjusted the length to accommodate longer names
    Student_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Student_Age INT check(Student_Age >= 18),
    CGPA DOUBLE check (CGPA >= 0 AND CGPA <= 4)
);
#select * from Student;
INSERT INTO Student (First_name, Second_name, Student_ID, Student_Age, CGPA)
VALUES 
("Lina", "Essam", 22010380, 19, 3.45),
("salsabil", "mohamed", 22010110, 21, 3.21),
("Rowan", "Kamal", 22010340, 19, 3.86),
("Salma", "Tarak", 22011629, 20, 3.8),
("Marihan", "Emad Elden", 22011531, 20, 1.7);


SELECT * FROM Student;