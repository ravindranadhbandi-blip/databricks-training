**Joins Assignment Report**

 **Overview**
This assignment demonstrates the use of SQL JOIN operations to analyze relationships between students, courses, instructors, and enrollments in a relational database.

The database consists of four main tables:
- Students
- Courses
- Instructors
- Enrollments

These tables are connected through primary and foreign key relationships, allowing us to retrieve meaningful insights using different types of joins.



**Objective**
The main objective of this assignment is to understand how different SQL joins work in real-world scenarios, especially when dealing with missing or incomplete data.

We aim to:
- Combine data from multiple tables
- Handle missing relationships between entities
- Identify unmatched records
- Generate complete reports using joins



** Key Concepts Used**

### 1. LEFT JOIN
Used to include all records from the left table, even if there are no matching records in the right table.

### 2. RIGHT JOIN
Used to include all records from the right table, even if there are no matching records in the left table.

### 3. FULL OUTER JOIN (Simulated)
Since MySQL does not support FULL OUTER JOIN directly, it is simulated using a combination of LEFT JOIN and RIGHT JOIN with UNION.

### 4. NULL Handling
NULL values represent missing relationships between tables, such as:
- Students not enrolled in any course
- Courses without instructors
- Instructors not assigned to courses


## Key Insights from the Data

- Some students are not enrolled in any courses.
- Some courses do not have any students enrolled.
- Certain courses do not have instructors assigned.
- Some instructors are not linked to any course.
- Complete system reports require combining multiple joins to avoid missing data.


This assignment helped in understanding how relational databases handle complex relationships using JOIN operations. It also demonstrated how different JOIN types can be used to extract meaningful insights even when data is incomplete or partially missing.
