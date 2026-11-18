--THE CASE IF ITC AND ITS SALES--
--CREATE A EXCEL DATA SHEET CONTAINING THE COLUMN NAME DISTRIBUTOR ID, NAME, CITY, REGION, PHONE--
--TABLE OF DISTRIBUTOR--
CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  phone TEXT
  );
  -- DROPPING THE TABLE --
  DROP TABLE distributors;
  
  --CREATE A TABLE WITH A NAME PRODUCTS CONTAINING PRODUCT_ID , PRODUCT NAME, BRAND, PRODUCT CATEGORY , PRICE, STOCK--
  CREATE TABLE products (
  product_id INTEGER PRIMARY KEY,
  product_name TEXT NOT NULL,
  brand TEXT,
  category TEXT NOT NULL,
  price REAL CHECK (price>0),
  stock INTEGER DEFAULT 0
  );
  --create table containing sales and should have sales_id, product_id, distributor_id, sales date , quantity and amount--
  CREATE TABLE sales (
  sales_id INTEGER PRIMARY KEY,
  product_id INTEGER,
  distributor_id INTEGER,
  sale_date TEXT,
  quantity INTEGER CHECK (quantity>0),
  amount REAL,
  FOREIGN KEY (product_id) REFERENCES products(product_id),
  FOREIGN KEY (distributor_id) REFERENCES distributors (distributor_id)
  );
  --CHECKING THE COLUMN--
  
  PRAGMA table_info(sales);
  PRAGMA table_info(products);
  