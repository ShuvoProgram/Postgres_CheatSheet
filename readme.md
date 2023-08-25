# PostgreSQL Database Management Commands

This repository contains a collection of PostgreSQL commands for various database management tasks.

## Introduction

This repository provides a set of PostgreSQL commands and examples for managing databases, tables, and data. Each section covers a specific aspect of database management, and the commands are presented with explanations for better understanding.

## Grant Permissions

Grant the necessary permissions to users for performing specific actions within the database.

- **Grant the "CONNECT" permission to the "test" database for the "postgres" user:**
  ```sql
  GRANT CONNECT ON DATABASE test TO postgres;

- **Grant the permission to create databases to the "postgres" user:**
  ```sql
  ALTER USER postgres CREATEDB;

## Database Operations

- **Create a new database named "test2":**
  ```sql
  CREATE DATABASE test2;

- **Rename the database "test2" to "test3":**
  ```sql
  ALTER DATABASE test2 RENAME TO test3;

- **Delete the "test3" database:**
  ```sql
  DROP DATABASE test3;

## Table Operations

- **Create a "student" table with columns for student information:**
  ```sql
  CREATE TABLE student (
    student_id INT,
    first_name VARCHAR(15),
    last_name VARCHAR(15),
    cgpa NUMERIC(1, 2) );

- **Rename the "student" table to "learner":**
  ```sql
  ALTER TABLE student RENAME TO learner;

- **Delete the "learner" table:**
  ```sql
  DROP TABLE learner;

## Table Operations

- **Create a "users" table with columns for user information and constraints:**
  ```sql
  CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT DEFAULT 18,
    UNIQUE(username, email));

- **Remove all data from the "users" table while keeping its structure:**
  ```sql
  TRUNCATE TABLE users;

- **Insert user data into the "users" table using various methods:**

- **Method 1:**
  ```sql
  INSERT INTO users(user_id, username, email, age)
  VALUES ('sam', 'sam@gmail.com', 21);

- **Method 2:**
  ```sql
  INSERT INTO users(username, email, age)
  VALUES ('clark', 'clark@gmail.com', 35),
       ('clark2', 'clark2@gmail.com', 35);

- **Method 3:**
  ```sql
  INSERT INTO users
  VALUES (1, 'persian', 'persian@gmail.com'),
       (2, 'persian2', 'persian2@gmail.com');

- **Add a "password" column to the "users" table with a default value:**
  ```sql
  ALTER TABLE users
  ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

- **Delete the "age" column from the "users" table:**
  ```sql
  ALTER TABLE users DROP COLUMN age;

- **Add and modify columns in the "users" table:**
  ```sql
  ALTER TABLE users ADD COLUMN demo INT;
  ALTER TABLE users ALTER COLUMN demo TYPE TEXT;
  ALTER TABLE users ALTER COLUMN country SET DEFAULT 'bangladesh';
  ALTER TABLE users ALTER COLUMN demo DROP DEFAULT;

- **Insert a user with specific values into the "users" table:**
  ```sql
  INSERT INTO users VALUES(4, 'john1', 'john1@gmail.com');

- **Rename the "demo" column to "country" in the "users" table:**
  ```sql
  ALTER TABLE users RENAME COLUMN demo TO country;
  ALTER TABLE users ALTER COLUMN country SET NOT NULL;

- **Drop the "NOT NULL" constraint from the "country" column:**
  ```sql
  ALTER TABLE users ALTER COLUMN country DROP NOT NULL;

- **Add a unique constraint to the "email" column in the "users" table:**
  ```sql
  ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE(email);

- **Delete the unique constraint from the "email" column in the "users" table:**
  ```sql
  ALTER TABLE users DROP CONSTRAINT unique_email;

## Retrieving Data

- **Retrieve all data from the "users" table:**
  ```sql
  SELECT * FROM users;


## Foreign Keys Constraint And Data Integrity

- **Create a table named "Employees" to store employee information.:**
  ```sql
  CREATE TABLE Employees (
      empID SERIAL PRIMARY KEY,
      empName VARCHAR(50) NOT NULL,
      departmentID INT,
      CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID)
  );

Explanation: Create a table to store employee details with a foreign key constraint.

- **Retrieve Specific table column:**
  ```sql
  SELECT empid, name, email, joining_date, salary, from employees;

  SELECT *
  FROM employees
  WHERE
      name <> 'Eve'
      AND salary > 9000
      OR name = 'Greta'

- **Update Course Data:**
  ```sql
  UPDATE courses
  SET
      course_name = 'laravel',
      description = 'super'
      WHERE course_id = 1;

Explanation: Update course data where course_id is 1.

- **Update Multiple Course Data:**
  ```sql
  UPDATE courses
  SET
      course_name = 'laravel',
      description = 'super'
      WHERE course_id > 1;

Explanation: Update course data for courses with course_id greater than 1.

- **Delete Course Data:**
  ```sql
  DELETE FROM courses WHERE course_id = 1;

Explanation: Delete course data where course_id is 1.

## Employees Table (Continued)

- **Delete Course Data:**
  ```sql
  CREATE TABLE IF NOT EXISTS employees (
    empID SERIAL PRIMARY KEY,
    name text NOT NULL,
    email TEXT NOT NULL,
    salary INT not NULL,
    joining_data DATE NOT NULL,
    deptID INT NOT NULL,
    CONSTRAINT fk_deptID FOREIGN KEY (deptID) REFERENCES department(deptID));

Explanation: Create employees table if it doesn't exist.

- **Select Specific Columns from Employees Table:**
  ```sql
  SELECT empid, name, email, joining_date, salary FROM employees;

Explanation: Retrieve specific columns from the employees table.

- **Filtering Rows with Conditions:**
  ```sql
  SELECT * FROM employees WHERE name LIKE '_r%';

  SELECT * FROM employees WHERE name LIKE '__r__';

  SELECT * FROM employees WHERE name LIKE 'G%a';

  SELECT * FROM employees WHERE deptid IS NULL;

Explanation: Retrieve rows based on specified conditions.

- **Sorting and Limiting Results:**
  ```sql
  SELECT * FROM employees ORDER BY name ASC LIMIT 10 OFFSET 2;

Explanation: Retrieve sorted and limited rows from employees table.

- **Retrieving Maximum Salary:**
  ```sql
  SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

Explanation: Retrieve employee with the highest salary.

- **IN, NOT IN, BETWEEN, and LIKE Operators:**
  ```sql
  SELECT * FROM employees WHERE empid NOT IN (2, 3, 5);
  SELECT * FROM employees WHERE salary BETWEEN 10000 AND 15000;
  SELECT * FROM employees WHERE name LIKE 'A%';

Explanation: Retrieve rows based on various filtering conditions.
