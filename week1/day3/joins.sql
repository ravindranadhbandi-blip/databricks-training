
-- SQL Joins Assignment Starter File
-- Compatible with PostgreSQL

DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS courses;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS instructors;

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(100),
    department VARCHAR(100)
);

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    instructor_id INT NULL,
    FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id)
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Insert instructors
INSERT INTO instructors VALUES
(1, 'Sarah Connor', 'Databases'),
(2, 'Michael Scott', 'Programming'),
(3, 'Tony Stark', 'Cloud Computing'),
(4, 'Bruce Wayne', 'Cyber Security');

-- Insert students
INSERT INTO students VALUES
(1, 'Alice Johnson', 'alice@email.com'),
(2, 'Bob Smith', 'bob@email.com'),
(3, 'Charlie Brown', 'charlie@email.com'),
(4, 'Diana Prince', 'diana@email.com'),
(5, 'Ethan Hunt', 'ethan@email.com'),
(6, 'Fiona Green', 'fiona@email.com');

-- Insert courses
INSERT INTO courses VALUES
(101, 'SQL Basics', 1),
(102, 'Python Fundamentals', 2),
(103, 'Data Analytics', NULL),
(104, 'Cloud Computing', 3),
(105, 'Machine Learning', NULL),
(106, 'Cyber Security', 4);

-- Insert enrollments
INSERT INTO enrollments VALUES
(1, 1, 101, '2024-01-10'),
(2, 1, 102, '2024-01-12'),
(3, 2, 101, '2024-01-15'),
(4, 3, 104, '2024-01-20'),
(5, 4, 106, '2024-01-25');

-- Notes:
-- Student 5 and 6 are not enrolled in any course.
-- Courses 103 and 105 have no instructor assigned.
-- Courses 103 and 105 also have no enrollments.
-- Instructor 4 teaches one course.

Query-1:
SELECT 
    s.student_id,
    s.student_name,
    c.course_id,
    c.course_name
FROM students s
LEFT JOIN enrollments e 
    ON s.student_id = e.student_id
LEFT JOIN courses c 
    ON e.course_id = c.course_id
ORDER BY s.student_id;

student_id	student_name	course_id	course_name
1	Alice Johnson	102	Python Fundamentals
1	Alice Johnson	101	SQL Basics
2	Bob Smith	101	SQL Basics
3	Charlie Brown	104	Cloud Computing
4	Diana Prince	106	Cyber Security
5	Ethan Hunt	null	null
6	Fiona Green	null	null


Query-2:
SELECT 
    c.course_id,
    c.course_name
FROM courses c
LEFT JOIN enrollments e 
    ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

course_id	course_name
103	Data Analytics
105	Machine Learning

Query-3:
SELECT 
    i.instructor_id,
    i.instructor_name,
    c.course_id,
    c.course_name
FROM instructors i
LEFT JOIN courses c
    ON i.instructor_id = c.instructor_id
ORDER BY i.instructor_id;

instructor_id	instructor_name	course_id	course_name
1	Sarah Connor	101	SQL Basics
2	Michael Scott	102	Python Fundamentals
3	Tony Stark	104	Cloud Computing
4	Bruce Wayne	106	Cyber Security

Query-4:
SELECT 
    course_id,
    course_name
FROM courses
WHERE instructor_id IS NULL;

course_id	course_name
103	Data Analytics
105	Machine Learning


Query-5:
SELECT 
    e.enrollment_id,
    e.course_id,
    e.enrollment_date,
    s.student_id,
    s.student_name
FROM enrollments e
RIGHT JOIN students s
    ON e.student_id = s.student_id
ORDER BY s.student_id;

enrollment_id	course_id	enrollment_date	student_id	student_name
1	101	2024-01-10	1	Alice Johnson
2	102	2024-01-12	1	Alice Johnson
3	101	2024-01-15	2	Bob Smith
4	104	2024-01-20	3	Charlie Brown
5	106	2024-01-25	4	Diana Prince
null	null	null	5	Ethan Hunt
null	null	null	6	Fiona Green

Query-6:
SELECT 
    s.student_id,
    s.student_name
FROM students s
LEFT JOIN enrollments e
    ON s.student_id = e.student_id
WHERE e.student_id IS NULL;

student_id	student_name
5	Ethan Hunt
6	Fiona Green

Query-7:
SELECT 
    s.student_id,
    s.student_name,
    e.enrollment_id,
    e.course_id,
    e.enrollment_date
FROM students s
LEFT JOIN enrollments e
    ON s.student_id = e.student_id

UNION

SELECT 
    s.student_id,
    s.student_name,
    e.enrollment_id,
    e.course_id,
    e.enrollment_date
FROM students s
RIGHT JOIN enrollments e
    ON s.student_id = e.student_id;

student_id	student_name	enrollment_id	course_id	enrollment_date
1	Alice Johnson	1	101	2024-01-10
1	Alice Johnson	2	102	2024-01-12
2	Bob Smith	3	101	2024-01-15
3	Charlie Brown	4	104	2024-01-20
4	Diana Prince	5	106	2024-01-25
5	Ethan Hunt	null	null	null
6	Fiona Green	null	null	null

Query-8:
SELECT 
    c.course_id,
    c.course_name
FROM courses c
LEFT JOIN enrollments e
    ON c.course_id = e.course_id
WHERE e.course_id IS NULL;

course_id	course_name
103	Data Analytics
105	Machine Learning


Query-9:
SELECT i.instructor_id, i.instructor_name, c.course_id, c.course_name
FROM instructors i
LEFT JOIN courses c ON i.instructor_id = c.instructor_id

UNION

SELECT i.instructor_id, i.instructor_name, c.course_id, c.course_name
FROM instructors i
RIGHT JOIN courses c ON i.instructor_id = c.instructor_id;

instructor_id	instructor_name	course_id	course_name
1	Sarah Connor	101	SQL Basics
2	Michael Scott	102	Python Fundamentals
3	Tony Stark	104	Cloud Computing
4	Bruce Wayne	106	Cyber Security
null	null	103	Data Analytics
null	null	105	Machine Learning

Query-10:
SELECT 
    s.student_name,
    c.course_name,
    i.instructor_name
FROM students s
LEFT JOIN enrollments e 
    ON s.student_id = e.student_id
LEFT JOIN courses c 
    ON e.course_id = c.course_id
LEFT JOIN instructors i 
    ON c.instructor_id = i.instructor_id;

student_name	course_name	instructor_name
Alice Johnson	SQL Basics	Sarah Connor
Alice Johnson	Python Fundamentals	Michael Scott
Bob Smith	SQL Basics	Sarah Connor
Charlie Brown	Cloud Computing	Tony Stark
Diana Prince	Cyber Security	Bruce Wayne
Ethan Hunt	null	null
Fiona Green	null	null
