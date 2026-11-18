--THE CASE OF ITC AND ITS SALES --
--CREATES A EXCEL DATASET CONTAINING THE COLUMN NAME DISTRIBUTOR ID,NAME,CITY,REGION,PHONE
--TABLE OF DISTRIBUTOR(
CREATE TABLE distributors (
  distributor_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  city TEXT,
  region TEXT,
  phone TEXT
  );
  
  
  --Dropping the table----distributors
  DROP TABLE distributors;
  
  --CREATE THE TABLE WITH NAME PRODUCTS CONTAINING PRODUCT ID,PRODUCT NAME,BRAND,CATEGORY,PRICE AND STOCK
  CREATE TABLE PRODUCT (
    Product_id integer primary key,
    product_name text NOT null,
    product_brand text,
    category text,
    price real check (price>0),
    stock INTEGER DEFAULT 0
    );
    -- create the table with name sales containing sale id , product id , distributor id , sales date , quantity , amount
    create table sales(
      sale_id integer primary key,
      product_id INTEGER,
      distributor_id INTEGER,
      sales_date TEXT ,
      quantity INTEGER  check (quantity>0),
      amount real,
      FOREIGN key (product_id) REFERENCES PRODUCT(product_id),
      FOREIGN KEY (distributor_id) REFERENCES DISTRIBUTORS(distributor_id)
      );
      --checking the column--
      PRAGMA table_info(sales);
      PRAGMA tale_info (Distributors);
      PRAGMA table_