-- Створення таблиці груп
DROP TABLE IF EXISTS Groups;
CREATE TABLE Groups (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);


-- Створення таблиці студентів
DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    id SERIAL PRIMARY KEY,
    fuul_name VARCHAR(150) NOT NULL,
    group_id INTEGER REFERENCES Groups(id)
    
);


-- Створення таблиці викладачів
DROP TABLE IF EXISTS Teachers;  
CREATE TABLE Teachers (
    id SERIAL PRIMARY KEY,
    fuul_name VARCHAR(150) NOT NULL
    
);

-- Створення таблиці предметів
DROP TABLE IF EXISTS Subjects;
CREATE TABLE Subjects (
    id SERIAL PRIMARY KEY,
    name VARCHAR(175) NOT NULL,
    teacher_id INTEGER REFERENCES Teachers(id)  
);

-- Створення таблиці оцінок
DROP TABLE IF EXISTS Grades;
CREATE TABLE Grades (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES Students(id),
    subject_id INTEGER REFERENCES Subjects(id),
    grade INTEGER CHECK (grade >= 0 and grade <= 100),
    grade_date DATE NOT NULL
);
