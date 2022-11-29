create table products (
id integer,
name text,
PRIMARY KEY(id)
);
create table customers (
id integer,
name text,
address1 text,
address2 text,
email_id text,
phone text,
PRIMARY KEY(id)
);
                            
create table suppliers (
id integer,
name text,
address1 text,
address2 text,
email_id text,
phone text,
PRIMARY KEY(id)
);
                            
create table sales (
id integer,
customer_id integer,
date date,
CONSTRAINT fkey_customer
FOREIGN KEY(customer_id)
REFERENCES customers(id)
);
                            
create table sales_items(
sales_id integer,
product_id integer,
qty integer,
sale_price integer,
CONSTRAINT fkey_sales
FOREIGN KEY(sales_id)
REFERENCES sales(id),
CONSTRAINT fkey_products
FOREIGN KEY(product_id)
REFERENCES products(id)
);
                            
create table purchases (
id integer,
vendor_id integer,
date date,
PRIMARY KEY(id),
CONSTRAINT fkey_vendor
FOREIGN KEY(vendor_id)
REFERENCES suppliers(id)
);
                            
create table purchase_items (
purchase_id integer,
product_id integer,
qty integer,
purchase_price integer,
CONSTRAINT fkey_purchase
FOREIGN KEY(purchase_id)
REFERENCES purchases(id),
CONSTRAINT fkey_products
FOREIGN KEY(product_id)
REFERENCES products(id)
);                            
insert into products values (101, 'product1');
insert into products values (102, 'product2');
insert into products values (103, 'product3');
insert into products values (104, 'product4');
insert into customers values (201, 'customer1', 'noida', 'delhi', 'customer1@xyz.com', '0123456');
insert into customers values (202, 'customer2', 'faridabad', 'gurugram', 'customer2@xyz.com', '0159753');
insert into customers values (203, 'customer3', 'gurugram', 'delhi', 'customer3@xyz.com', '0147852');
                            
insert into suppliers values (301, 'supplier1', 'ghaziabad', 'noida', 'supplier1@xyz.com', '0128452');
insert into suppliers values (302, 'supplier2', 'sonipat', 'gurugram', 'supplier2@xyz.com', '0179793');
insert into suppliers values (303, 'supplier3', 'surat', 'nagpur', 'supplier3@xyz.com', '0117855'); 
                            
insert into purchases values (11,301,'08-01-2022');
insert into purchases values (12,302,'08-11-2021');
insert into purchases values (13,303,'01-05-2022');
                            
                            
insert into purchase_items values (11,101,56,15000);
insert into purchase_items values (12,102,47,11000);
insert into purchase_items values (13,103,11,22000);

insert into sales  values (1,201,'09-01-2022');
insert into sales  values (2,202,'10-11-2021');
insert into sales  values (3,203,'05-05-2022');

insert into sales_items values (1,101,22,22000);
insert into sales_items values (2,102,33,20000);
insert into sales_items values (3,103,44,31000);