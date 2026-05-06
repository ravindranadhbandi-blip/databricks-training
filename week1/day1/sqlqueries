-- Create Department table
CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

-- Create Employee table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10, 2),
    department_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Create Project table
CREATE TABLE Project (
    project_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Insert data into Department table
INSERT INTO Department (department_id, name) VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

-- Insert data into Employee table
INSERT INTO Employee (emp_id, name, age, salary, department_id, hire_date) VALUES
(1, 'John Doe', 28, 50000.00, 1, '2020-01-15'),
(2, 'Jane Smith', 34, 60000.00, 2, '2019-07-23'),
(3, 'Bob Brown', 45, 80000.00, 1, '2018-02-12'),
(4, 'Alice Blue', 25, 45000.00, 3, '2021-03-22'),
(5, 'Charlie P.', 29, 50000.00, 2, '2019-12-01'),
(6, 'David Green', 38, 70000.00, 4, '2022-05-18'),
(7, 'Eve Black', 40, 55000.00, 3, '2021-08-30');

-- Insert data into Project table
INSERT INTO Project (project_id, name, department_id) VALUES
(1, 'Project Alpha', 1),
(2, 'Project Beta', 2),
(3, 'Project Gamma', 1),
(4, 'Project Delta', 3),
(5, 'Project Epsilon', 4),
(6, 'Project Zeta', 4),
(7, 'Project Eta', 3);


-- Insert additional data into Department table (if needed)
-- No additional departments needed for this data set

-- Insert additional data into Employee table to test edge cases for joins and nested queries
INSERT INTO Employee (emp_id, name, age, salary, department_id, hire_date) VALUES
(8, 'Frank White', 32, 48000.00, NULL, '2021-07-10'),  -- Employee without a department
(9, 'Grace Kelly', 27, 65000.00, 1, '2018-11-13'),
(10, 'Hannah Lee', 30, 53000.00, 4, '2020-02-25');

-- Insert additional data into Project table to test edge cases for joins
INSERT INTO Project (project_id, name, department_id) VALUES
(8, 'Project Theta', 1),
(9, 'Project Iota', NULL);  -- Project without a department

Query-1:
select *from Employee

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15
2	Jane Smith	34	60000.0	2	2019-07-23
3	Bob Brown	45	80000.0	1	2018-02-12
4	Alice Blue	25	45000.0	3	2021-03-22
5	Charlie P.	29	50000.0	2	2019-12-01
6	David Green	38	70000.0	4	2022-05-18
7	Eve Black	40	55000.0	3	2021-08-30
8	Frank White	32	48000.0	null	2021-07-10
9	Grace Kelly	27	65000.0	1	2018-11-13
10	Hannah Lee	30	53000.0	4	2020-02-25

Query-2:
select name, salary from Employee

name	salary
John Doe	50000.0
Jane Smith	60000.0
Bob Brown	80000.0
Alice Blue	45000.0
Charlie P.	50000.0
David Green	70000.0
Eve Black	55000.0
Frank White	48000.0
Grace Kelly	65000.0
Hannah Lee	53000.0


Query-3:
select  *from Employee where age>30

emp_id	name	age	salary	department_id	hire_date
2	Jane Smith	34	60000.0	2	2019-07-23
3	Bob Brown	45	80000.0	1	2018-02-12
6	David Green	38	70000.0	4	2022-05-18
7	Eve Black	40	55000.0	3	2021-08-30
8	Frank White	32	48000.0	null	2021-07-10

Query-4:
select  name from Department

name
IT
HR
Finance
Marketing

Query-5:
select *from Employee where department_id=1;

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15
3	Bob Brown	45	80000.0	1	2018-02-12
9	Grace Kelly	27	65000.0	1	2018-11-13

Query-6:
select *from Employee where name like 'J%';

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15
2	Jane Smith	34	60000.0	2	2019-07-23

Query-7:
select *from Employee where name like '%e';

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15
4	Alice Blue	25	45000.0	3	2021-03-22
8	Frank White	32	48000.0	null	2021-07-10
10	Hannah Lee	30	53000.0	4	2020-02-25

Query-8:
select *from Employee where name like '%a%';

emp_id	name	age	salary	department_id	hire_date
2	Jane Smith	34	60000.0	2	2019-07-23
4	Alice Blue	25	45000.0	3	2021-03-22
5	Charlie P.	29	50000.0	2	2019-12-01
6	David Green	38	70000.0	4	2022-05-18
7	Eve Black	40	55000.0	3	2021-08-30
8	Frank White	32	48000.0	null	2021-07-10
9	Grace Kelly	27	65000.0	1	2018-11-13
10	Hannah Lee	30	53000.0	4	2020-02-25

Query-9:
select *from Employee where name like '__________';

emp_id	name	age	salary	department_id	hire_date
2	Jane Smith	34	60000.0	2	2019-07-23
4	Alice Blue	25	45000.0	3	2021-03-22
5	Charlie P.	29	50000.0	2	2019-12-01
10	Hannah Lee	30	53000.0	4	2020-02-25

Query-10:
select *from Employee where name like '_a%';

emp_id	name	age	salary	department_id	hire_date
2	Jane Smith	34	60000.0	2	2019-07-23
6	David Green	38	70000.0	4	2022-05-18
10	Hannah Lee	30	53000.0	4	2020-02-25


Query-11:
select *from Employee where year(hire_date)=2020;

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15
10	Hannah Lee	30	53000.0	4	2020-02-25


Query-12:
SELECT *
FROM Employee
WHERE MONTH(hire_date) = 1;

emp_id	name	age	salary	department_id	hire_date
1	John Doe	28	50000.0	1	2020-01-15


Query-13:
SELECT *
FROM Employee
WHERE hire_date=2019-1-1;

emp_id	name	age	salary	department_id	hire_date
There are no results to be displayed.

Query-14:
SELECT *
FROM Employee
WHERE hire_date=2021-3-1;

emp_id	name	age	salary	department_id	hire_date
There are no results to be displayed.

Query-15:
SELECT *
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

emp_id	name	age	salary	department_id	hire_date
There are no results to be displayed.

Query-16:
select sum(Salary) from Employee;

sum(Salary)
576000.0

Query-17:
select sum(Salary) from Employee;

avg(Salary)
57600.0

Query-18:
select min(Salary) from Employee;

min(Salary)
45000.0

Query-19:
select department_id,count(*) from Employee group by department_id;

department_id	count(*)
null	1
1	3
2	2
3	2

Query-20:
select department_id,avg(Salary) from Employee group by department_id;

department_id	avg(Salary)
null	48000.0
1	65000.0
2	55000.0
3	50000.0
4	61500.0

Query-21:
select department_id,sum(Salary) from Employee group by department_id;

department_id	sum(Salary)
null	48000.0
1	195000.0
2	110000.0
3	100000.0
4	123000.0

Query-22:
select department_id,avg(age) from Employee group by department_id;

department_id	avg(age)
null	32.0
1	33.3333
2	31.5
3	32.5
4	34.0

Query-23:
SELECT YEAR(hire_date) AS hire_year,
       COUNT(*) AS employee_count
FROM Employee
GROUP BY YEAR(hire_date);

hire_year	employee_count
2018	2
2019	2
2020	2
2021	3
2022	1


Query-24:
select department_id,max(Salary) from Employee group by department_id;

department_id	max(Salary)
null	48000.0
1	80000.0
2	60000.0
3	55000.0
4	70000.0

Query-25:
SELECT department_id 
    FROM Employee 
    GROUP BY department_id 
    ORDER BY AVG(salary) DESC 
    LIMIT 1;

department_id
1

Query-26:
SELECT department_id 
    FROM Employee 
    GROUP BY department_id 
    HAVING COUNT(*) > 2;
department_id
1

Query-27:
SELECT department_id 
    FROM Employee 
    GROUP BY department_id 
    HAVING avg(Salary)>55000;

department_id
1
4

Query-28:
SELECT department_id 
    FROM Employee 
    GROUP BY department_id 
    HAVING count(*)>0;

department_id
null
1
2
3
4

Query-29:
select department_id from Employee GROUP BY department_id having avg(salary)<100000;

department_id
null
1
2
3
4

Query-30:
select department_id from Employee GROUP BY department_id having avg(salary)>70000;

department_id
There are no results to be displayed.
