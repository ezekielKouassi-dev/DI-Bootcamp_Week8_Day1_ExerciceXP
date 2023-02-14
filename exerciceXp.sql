--- Creation of items table and customers table
--- I have created my own naming fields in database, my own convention of naming

CREATE TABLE items(
	lg_iteid SERIAL PRIMARY KEY,
	str_itename VARCHAR(100) NOT NULL,
	dbl_iteprice numeric NOT NULL
);

CREATE TABLE customers(
	lg_cusid SERIAL PRIMARY KEY,
	str_cusfirst_name VARCHAR(100) NOT NULL,
	str_cuslast_name VARCHAR(100) NOT NULL
);

--- 1 - add records in items table

INSERT INTO items(str_itename, dbl_iteprice) 
VALUES ('Small Desk', 100), ('Large desk', 300), ('Fan', 80);

--- 2 - add record in customers table

INSERT INTO customers(str_cusfirst_name, str_cuslast_name)
VALUES ('Greg', 'Jones'), ('Sandra', 'Jones'), ('Scott', 'Scott'),
('Trevor', 'Green'), ('Melanie', 'Johnson');

--- 3 - SQL request : 

--- 3.1 - get all items

SELECT * FROM items;

--- 3.2 - All the items with a price above 80 (80 not included).

SELECT * FROM items WHERE dbl_iteprice > 80;

--- 3.3 - All the items with a price below 300. (300 included)

SELECT * FROM items WHERE dbl_iteprice <= 300;
 
--- 3.4 - All customers whose last name is ‘Smith’ (What will be your outcome?).

SELECT * FROM customers WHERE str_cuslast_name = 'smith';

--- 3.5 - All customers whose last name is ‘Jones’

SELECT * FROM customers WHERE str_cuslast_name = 'Jones';

--- 3.6 - All customers whose firstname is not ‘Scott’

SELECT * FROM customers WHERE str_cusfirst_name != 'Scott';


		
		
		
		