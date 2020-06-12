DROP DATABASE IF EXISTS trackerdb;

CREATE DATABASE trackerdb;

USE trackerdb;

  CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30) UNIQUE NOT NULL,
  PRIMARY KEY (id)
  );

  CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL (10,2) NOT NULL,
  department_id INT NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id) on delete cascade,
  PRIMARY KEY (id)
  );

  CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (role_id) REFERENCES role(id) on delete cascade,
  manager_id INT NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id) on delete set NULL,
  PRIMARY KEY (id)
  );