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
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("apple", "fruits", 10, 35);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("banana", "fruits",12, 40);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("strawberry", "fruits", 13, 45);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("cherry", "fruits", 14, 50);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("raspberry", "fruits",15, 55);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("blueberry", "fruits",16, 60);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("peaches", "fruits", 17, 65);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("grapes", "fruits", 18, 70 );
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("pears", "fruits", 19, 75);
INSERT INTO products (product_name, department_name, price,stock_quantity) VALUES ("grapefruit", "fruits", 20,80);

