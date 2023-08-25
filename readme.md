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
