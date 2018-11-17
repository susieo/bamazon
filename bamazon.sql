DROP DATABASE IF EXISTS bamazon;
CREATE database bamazon;

USE bamazon;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NULL,
  deparment_name VARCHAR(100) NULL,
  price DECIMAL(10,4) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Nutella", "groceries",10.50 , 180);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Yoga Mat", "Sports & Outdoors", 26.99, 135);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Water Bottle", "Sports & Outdoors", 13.99, 258);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Dress", "Clothing", 16.99, 129);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Beats Headphones", "Electronics",349.95 , 257);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Vitamins","Health", 15.33, 230);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Phone Case", "Accesories ", 17.08, 1028);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Cereal", "Groceries", 4.59, 2450);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("Bowl", "Home", 23.99, 3489);

INSERT INTO products (product_name, deparment_name, price, stock_quantity)
VALUES ("CookBook", "Books", 43.99, 4857);