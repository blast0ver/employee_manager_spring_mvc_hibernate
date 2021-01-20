CREATE USER 'user'@'localhost' IDENTIFIED BY 'user';

GRANT ALL PRIVILEGES ON * . * TO 'user'@'localhost';

CREATE DATABASE  manager_db;
USE manager_db;

CREATE TABLE employees (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(45),
  surname varchar(45),
  email varchar(45),
  department varchar(45),
  salary int,
  PRIMARY KEY (id)
);

