# 0x14. MySQL

## Description

Welcome to the 0x14. MySQL project repository! This project focuses on understanding, setting up, and managing MySQL databases. You will learn how to perform various database operations, including creating and managing databases and tables, writing SQL queries, and optimizing database performance.

## Learning Objectives

By the end of this project, you should be able to:

- Understand the basics of relational databases and MySQL.
- Set up and configure a MySQL server.
- Perform basic database operations: creating databases and tables, inserting and retrieving data.
- Write complex SQL queries to manipulate and retrieve data.
- Understand database normalization and indexing for performance optimization.
- Backup and restore MySQL databases.

## Project Files

- **0-mysql_configuration_primary**: MySQL configuration file for the primary server.
- **1-mysql_configuration_replica**: MySQL configuration file for the replica server.
- **2-mysql_backup**: A script to back up MySQL databases.

## How to Use

To use the provided scripts and configuration files, follow these steps:

1. Ensure you have MySQL installed on your server. If not, you can install it by following the [MySQL installation guide](https://dev.mysql.com/doc/mysql-installation-excerpt/5.7/en/).
2. Open a terminal or command prompt.
3. Navigate to the directory containing the configuration file or script you want to use.
4. Apply the configuration file or execute the script using MySQL commands or bash:

### Configuring MySQL Servers

- To apply the configuration file for the primary server:
  ```bash
  sudo cp 0-mysql_configuration_primary /etc/mysql/my.cnf
  sudo systemctl restart mysql
  ```
