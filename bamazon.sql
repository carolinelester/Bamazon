DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    department_name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    product_sales DECIMAL(10, 2),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES 
('Maybelline Mascara', 'Cosmetics', 5.75, 420),
		('Glossier Lip Gloss', 'Cosmetics', 16.25, 690),
		('Glad Trash Bags', 'Grocery', 5.99, 340),
		('Brawny Paper Towels', 'Grocery', 4.25, 400),
		('Navel Oranges', 'Produce', 0.76, 800),
        ('Veuve Clicquot Champagne', 'Alcohol', 49.95, 26),
		('Mini Seedless Watermelon', 'Produce', 4.99, 200),
		('La Croix 12 pack', 'Grocery', 5.27, 267),
		('Oatly Oat Milk', 'Grocery', 4.55, 200),
		('Huggies Diapers', 'Children', 2.75, 476),
		('Evian Water Liter', 'Grocery', 1.99, 575),
		('Soy Baby Formula', 'Children', 14.50, 76),
		('Yoga Mat', 'Sports', 17.75, 150),
        ('Decoy Cabernet Sauvignon', 'Alcohol', 16.50, 300),
		('Sports Tape', 'Sports', 3.99, 48),
		('Fleetwood Mac Band Tee', 'Clothing', 12.55, 120),
		('Alo Yoga Pants', 'Clothing', 47.88, 250),
		('Dog Collar', 'Pet', 9.25, 157),
		('Organix Dog Food', 'Pet', 15.50, 163),
		('Advil', 'Pharmacy', 9.95, 389),
		('Band Aid', 'Pharmacy', 3.25, 550),
		('Ben & Jerry Ice Cream', 'Grocery', 4.25, 462),
        ('Guacamole', 'Produce', 3.99, 34),
        ('Meiomi Pinot Noir', 'Alcohol', 19.99, 58),
        ('Raspberries', 'Produce', 2.99, 143)
        ;
        
CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name TEXT NOT NULL,
    over_head_costs DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Alcohol', 3000),
('Children', 6000),
('Cosmetics', 7000),
('Clothing', 8000),
('Grocery', 2000),
('Pet', 10000),
('Pharmacy', 4000),
('Produce', 7000),
('Sports', 5000);

SELECT * FROM departments;
