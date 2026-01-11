DROP TABLE IF EXISTS laptop_details;
DROP TABLE IF EXISTS laptops;
DROP TABLE IF EXISTS brand_models;
DROP TABLE IF EXISTS brands;

CREATE TABLE laptops
(
    id    SERIAL PRIMARY KEY,
    name  TEXT NOT NULL,
    brand TEXT NOT NULL
);

CREATE TABLE laptop_details
(
    laptop_id            INT PRIMARY KEY,
    serial_number        TEXT UNIQUE NOT NULL,
    manufacture_country  TEXT,
    FOREIGN KEY (laptop_id) REFERENCES laptops (id)
);

CREATE TABLE brands
(
    id   SERIAL PRIMARY KEY,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE brand_models
(
    id              SERIAL PRIMARY KEY,
    brand_id        INT  NOT NULL,
    model           TEXT NOT NULL,
    laptop_type     TEXT NOT NULL,
    FOREIGN KEY (brand_id) REFERENCES brands (id)
);



INSERT INTO brands (name)
VALUES ('HP'),
       ('Lenovo'),
       ('Apple');

INSERT INTO laptops (name, brand)
VALUES ('Gaming Laptop', 'HP'),
       ('Ultrabook', 'Apple');

INSERT INTO laptop_details (laptop_id, serial_number, manufacture_country)
VALUES (1, 'SN-HP-001', 'China'),
       (2, 'SN-APP-002', 'China');

INSERT INTO brand_models (brand_id, model, laptop_type)
VALUES (1, 'Victus 15', 'Gaming Laptop'),
       (1, 'Omen 16', 'Gaming Laptop'),
       (2, 'ThinkPad X1 Carbon', 'Business Laptop'),
       (2, 'Legion 5', 'Gaming Laptop'),
       (3, 'MacBook Air M2', 'Ultrabook'),
       (3, 'MacBook Pro 14', 'Pro Laptop');



SELECT l.name, d.serial_number, d.manufacture_country
FROM laptops l
         JOIN laptop_details d
              ON l.id = d.laptop_id;

SELECT b.name AS brand, bm.model, bm.laptop_type
FROM brands b
         JOIN brand_models bm
              ON b.id = bm.brand_id;