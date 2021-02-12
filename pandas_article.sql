-- Run this script in an SQL tool such as Oracle SQL*Plus or Oracle SQL Developer to create database objects for the article examples 
-- Uncomment the following three DROP TABLE commands when re-running the script
 
-- DROP TABLE details;
-- DROP TABLE orders;
-- DROP TABLE stocks;

-- the orders/details example

CREATE TABLE orders(
 pono NUMBER PRIMARY KEY,
 ordate VARCHAR2(10),
 empl VARCHAR2(50)
);

INSERT INTO orders VALUES(7723510, '2020-12-15', 'John Holland'); 
INSERT INTO orders VALUES(5626234, '2020-12-15', 'Tim Lewis');
INSERT INTO orders VALUES(7723533, '2020-12-15', 'John Holland');
INSERT INTO orders VALUES(7823675, '2020-12-16', 'Maya Candy'); 
INSERT INTO orders VALUES(5626376, '2020-12-16', 'Tim Lewis');
INSERT INTO orders VALUES(5626414, '2020-12-17', 'Dan West');
INSERT INTO orders VALUES(7823787, '2020-12-17', 'Maya Candy'); 
INSERT INTO orders VALUES(5626491, '2020-12-17', 'Dan West');

CREATE TABLE details(
 pono NUMBER REFERENCES orders(pono),
 lineid NUMBER(3),
 item VARCHAR2(50),
 brand VARCHAR2(50),
 price NUMBER(10,2),
 quantity NUMBER(5),
 discount NUMBER(3),
 CONSTRAINT detail_pk PRIMARY KEY (pono, lineid)
);

INSERT INTO details VALUES(7723510, 1, 'Swim Shorts', 'Hurley', 17.95, 1, 0); 
INSERT INTO details VALUES(7723510, 2, 'Jacket', 'Oakley', 142.33, 1, 0);
INSERT INTO details VALUES(5626234, 1, 'Socks', 'Vans', 16.15, 4, 15);
INSERT INTO details VALUES(7723533, 1, 'Jeans', 'Quiksilver', 84.90, 2, 25);
INSERT INTO details VALUES(7723533, 2, 'Socks', 'Mons Royale', 10.90, 2, 0);
INSERT INTO details VALUES(7723533, 3, 'Socks', 'Stance', 12.85, 2, 20);
INSERT INTO details VALUES(7823675, 1, 'T-shirt', 'Patagonia', 35.50, 3, 0); 
INSERT INTO details VALUES(5626376, 1, 'Hoody', 'Animal', 44.05, 1, 0);
INSERT INTO details VALUES(5626376, 2, 'Cargo Shorts', 'Animal', 38.60, 1, 12);
INSERT INTO details VALUES(5626414, 1, 'Shirt', 'Volcom', 78.55, 2, 0);
INSERT INTO details VALUES(7823787, 1, 'Boxer Shorts', 'Superdry', 30.45, 2, 18); 
INSERT INTO details VALUES(7823787, 2, 'Shorts', 'Barts', 35.90, 1, 0);
INSERT INTO details VALUES(5626491, 1, 'Cargo Shorts', 'Billabong', 48.74, 1, 22);
INSERT INTO details VALUES(5626491, 2, 'Sweater', 'Dickies', 65.95, 1, 0);

COMMIT;

-- the stocks example

CREATE TABLE stocks(
 dt DATE,
 symbol VARCHAR2(10),
 price NUMBER
); 

