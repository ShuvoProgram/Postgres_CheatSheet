CREATE TABLE
    Employees (
        empID SERIAL PRIMARY KEY,
        empName VARCHAR(50) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
    )

CREATE TABLE
    courses (
        course_id SERIAL PRIMARY KEY,
        course_name VARCHAR(255) NOT NULL,
        description VARCHAR(255),
        publication_Date DATE
    )

INSERT INTO
    courses (
        course_id,
        course_name,
        description,
        publication_Date
    )
VALUES (
        1,
        'postgres',
        'good',
        '2020-07-11'
    ), (
        2,
        'javascript',
        'good',
        '2022-04-18'
    ), (
        13,
        'react',
        'good',
        '2019-01-11'
    )

UPDATE courses
set
    course_name = 'laravel',
    description = 'super'
WHERE course_id = 1;

UPDATE courses
set
    course_name = 'laravel',
    description = 'super'
WHERE course_id > 1;

UPDATE courses
set
    course_name = 'laravel',
    description = 'super'
WHERE course_id = 1;

DELETE FROM courses WHERE course_id = 1;

CREATE TABLE
    IF NOT EXISTS employees(
        empID SERIAL PRIMARY KEY,
        name text NOT NULL,
        email TEXT NOT NULL,
        salary INT not NULL,
        joining_data DATE NOT NULL,
        deptID INT NOT NULL,
        CONSTRAINT fk_deptID FOREIGN KEY (deptID) REFERENCES department(deptID)
    )

-- select all field/rows

SELECT * FROM employees;

SELECT * FROM courses;

-- select some COLUMN

SELECT empid, name, email, joining_date, salary, from employees;

SELECT *
FROM employees
WHERE
    name <> 'Eve'
    AND salary > 9000
    OR name = 'Greta'

SELECT * FROM employees ORDER BY name ASC LIMIT 10 OFFSET 2;

SELECT * FROM employees ORDER BY name DESC;

-- Highest salary from employees table

SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

-- Third Highest salary

SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- IN, NOT IN, BETWEEN, LIKE

SELECT * FROM employees WHERE empid NOT IN (2, 3, 5);

SELECT * FROM employees WHERE salary BETWEEN 10000 AND 15000;

-- LIKE

SELECT * FROM employees WHERE name LIKE 'A%';

SELECT * FROM employees WHERE name LIKE '%a';

SELECT * FROM employees WHERE name LIKE '%a%';

-- Specific position

SELECT * FROM employees WHERE name LIKE '_r%';

SELECT * FROM employees WHERE name LIKE '__r__';

SELECT * FROM employees WHERE name LIKE 'G%a';

SELECT * FROM employees WHERE deptid IS NULL;