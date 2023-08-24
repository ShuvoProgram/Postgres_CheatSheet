-- #Grant CONNECT to the database

GRANT CONNECT ON DATABASE test TO postgres 

-- #Grant permission to create database

ALTER USER postgres CREATEDB 

-- #CREATE DATABASE

CREATE DATABASE test2 

-- #RENAME DATABASE

ALTER DATABASE test2 RENAME TO test3;

-- #DELETE DATABASE

DROP DATABASE test3 

-- #CREATE A STUDENT TABLE

CREATE Table
    student (
        student_id INT,
        first_name VARCHAR(15),
        last_name VARCHAR(15),
        cgpa NUMERIC(1, 2)
    )

-- #RENAME A TABLE

ALTER TABLE student RENAME TO learner 

-- #DELETE A TABLE

DROP TABLE learner;

-- #CREATE A TABLE WITH CONSTRAINTS

CREATE TABLE
    users (
        user_id SERIAL PRIMARY KEY,
        username VARCHAR(50) NOT NULL,
        email VARCHAR(50) NOT NULL,
        age INT DEFAULT 18,
        UNIQUE(username, email)
    )

-- #Table data remove without DROP

TRUNCATE TABLE users 

-- #INSERT USERS INTO TABLE

-- #1

INSERT INTO
    users(user_id, username, email, age)
VALUES ('sam', 'sam@gmail.com', 21) -- #2

INSERT INTO
    users(username, email, age)
VALUES ('clark', 'clark@gmail.com', 35), (
        'clark2',
        'clark2@gmail.com',
        35
    );

-- #3

INSERT INTO users
VALUES (
        1,
        'persian',
        'persian@gmail.com'
    ), (
        2,
        'persian2',
        'persian2@gmail.com'
    )

-- #add column table

ALTER TABLE users
ADD
    COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

--#Delete a column

ALTER TABLE users DROP COLUMN age;

ALTER TABLE users ADD COLUMN demo INT;

ALTER TABLE users Alter COLUMN demo type text;

ALTER TABLE users alter COLUMN country set DEFAULT 'bangladesh';

ALTER TABLE users alter COLUMN demo DROP DEFAULT;

INSERT INTO users VALUES(4, 'john1', 'john1@gmail.com') 

-- #Rename a COLUMN

ALTER TABLE users RENAME COLUMN demo to country;

ALTER TABLE users alter COLUMN country set NOT NULL;

-- # Drop a constraint

ALTER TABLE users alter COLUMN country DROP NOT NULL;

-- #ADD a constraint

ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE(email) 

-- #Delete a constraint

ALTER TABLE users DROP CONSTRAINT unique_email 

-- #CHECK USER IN TABLE DATA

SELECT * FROM users;