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
