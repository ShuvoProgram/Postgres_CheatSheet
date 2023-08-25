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
    cgpa NUMERIC(1, 2)
);

- **Rename the "student" table to "learner":**
```sql
ALTER TABLE student RENAME TO learner;

- **Delete the "learner" table:**
```sql
DROP TABLE learner;

## User Table Operations

- **Create a "users" table with columns for user information and constraints:**
```sql
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT DEFAULT 18,
    UNIQUE(username, email)
);

- **Remove all data from the "users" table while keeping its structure:**
```sql
TRUNCATE TABLE users;

- **Insert user data into the "users" table using various methods.:**

- ***Method 1:***
```sql
INSERT INTO users(user_id, username, email, age)
VALUES ('sam', 'sam@gmail.com', 21);

- ***Method 2:***
```sql
INSERT INTO users(username, email, age)
VALUES ('clark', 'clark@gmail.com', 35),
       ('clark2', 'clark2@gmail.com', 35);


- ***Method 3:***
```sql
INSERT INTO users
VALUES (1, 'persian', 'persian@gmail.com'),
       (2, 'persian2', 'persian2@gmail.com');
