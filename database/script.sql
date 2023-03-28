CREATE TABLE Brands (
  brand_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (brand_id)
);

CREATE TABLE Categories (
  category_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE Sneakers (
  sneaker_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  brand_id INT NOT NULL,
  category_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  PRIMARY KEY (sneaker_id),
  FOREIGN KEY (brand_id) REFERENCES Brands(brand_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Customers (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Brands (
  brand_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (brand_id)
);

CREATE TABLE Categories (
  category_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (category_id)
);

CREATE TABLE Sneakers (
  sneaker_id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  brand_id INT NOT NULL,
  category_id INT NOT NULL,
  image_url VARCHAR(255) NOT NULL,
  PRIMARY KEY (sneaker_id),
  FOREIGN KEY (brand_id) REFERENCES Brands(brand_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Customers (
  customer_id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE Orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATETIME NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
  order_detail_id INT NOT NULL AUTO_INCREMENT,
  order_id INT NOT NULL,
  sneaker_id INT NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_detail_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (sneaker_id) REFERENCES Sneakers(sneaker_id)
);

INSERT INTO Brands VALUES (1, 'nike');
INSERT INTO Brands VALUES (2, 'adidas');
INSERT INTO Brands VALUES (3, 'jordan');
INSERT INTO Brands VALUES (4, 'reebok');

CREATE TABLE Orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  customer_id INT NOT NULL,
  order_date DATETIME NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
  order_detail_id INT NOT NULL AUTO_INCREMENT,
  order_id INT NOT NULL,
  sneaker_id INT NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_detail_id),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (sneaker_id) REFERENCES Sneakers(sneaker_id)
);
