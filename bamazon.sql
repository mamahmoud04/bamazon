CREATE DATABASE bamazon;
USE bamazon;

-- Create the table .
CREATE TABLE products (
  id int AUTO_INCREMENT,
  product_name varchar(30) NOT NULL,
  department_name varchar(30) NOT NULL,
  price int(30) NOT NULL,
  stock_quantity int(30) NOT NULL
  PRIMARY KEY(id)
);
-- Insert a set of records. 
INSERT INTO products (product_name, department_name) VALUES ("apple", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("banana", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("strawberry", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("cherry", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("raspberry", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("blueberry", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("peaches", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("grapes", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("pears", "fruits");
INSERT INTO products (product_name, department_name) VALUES ("grapefruit", "fruits");

