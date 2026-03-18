create database inventory_db;
use inventory_db;

-- →	Create 'suppliers' table with id, name, contact, email fields

create table suppliers(
sup_id int AUTO_INCREMENT PRIMARY KEY,
name varchar(50),
contact varchar(50),    # it can be possible user can add + sign before contact number
email varchar (50)
);

-- →	Create 'products' table with id, name, category, price, quantity, supplier_id (FOREIGN KEY)

create table products(
pro_id int AUTO_INCREMENT PRIMARY KEY,
 name varchar(50),
 category varchar(50),
 price float,
 quantity int,
 sup_id int,
 FOREIGN KEY
 (sup_id) 
 REFERENCES
 suppliers (sup_id));
 
 
 -- →	Create 'orders' table with id, product_id, quantity, order_date, order_type fields
 
 create table orders(
 id int AUTO_INCREMENT PRIMARY KEY,
 pro_id int,
 quantity int,
 order_date DATE,
 order_type varchar(50),
 FOREIGN KEY
 (pro_id)
 REFERENCES products (pro_id));