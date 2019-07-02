-- Drops the bamazon_db if it exists currently --
DROP DATABASE IF EXISTS bamazon_db;

-- Creates the "bamazon_db" database --
CREATE DATABASE bamazon_db;

-- Makes it so all of the following code will affect bamazon_db --
USE bamazon_db;

-- Creates the table "products" within bamazon_db --
CREATE TABLE products(
  -- Add a Primary Key called item_id to table
  item_id INTEGER(100) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "product_name" which cannot contain null --
  product_name VARCHAR(60) NOT NULL,
  -- Makes a string column called "department_name" which cannot contain null --
  department_name VARCHAR(60) NOT NULL,
  -- Makes an numeric column called "retail_price" that equals the actual cost to customer --
  retail_price DECIMAL(10, 2) NULL,
  -- Makes an numeric column called "stock_quantity" that will display how much of the product is available in our stores  --
  stock_quantity INTEGER(200) NOT NULL,
  -- Primary Key definition
  PRIMARY KEY (item_id)
);


-- Creates new rows containing data in all named columns --
INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Where the Crawdads Sing", "Books", 20.95, 100);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("We Are La Cocina", "Books", 19.46, 50);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Step Back in Time", "Audio CD", 16.78, 150);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Western Stars", "Audio CD", 11.99, 200);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Hotel California", "Audio CD", 14.88, 75);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Claudia'S Canine Cuisine Gift Assortment Dog Cookies", "Pet Supplies", 11.51, 65);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Claudia'S Canine Cuisine Signature Gift Box Of Dog Cookies", "Pet Supplies", 11.59, 65);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("Crazy Dog Train-Me! Training Reward Mini Dog Treats", "Pet Supplies", 3.39, 25);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("LifeStraw Personal Water Filter", "Outdoors", 14.89, 135);

INSERT INTO products (product_name, department_name, retail_price, stock_quantity)
VALUES ("ALPS Mountaineering Lynx 1-Person Tent", "Outdoors", 82.92, 80);
