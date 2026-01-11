DROP TABLE IF EXISTS laptops;

CREATE TABLE laptops (
                         id SERIAL PRIMARY KEY,
                         brand TEXT NOT NULL,
                         model TEXT NOT NULL,
                         cpu TEXT,
                         ram_gb INT,
                         storage_gb INT,
                         year INT,
                         price INT
);

INSERT INTO laptops (brand, model, cpu, ram_gb, storage_gb, year, price)
VALUES
    ('HP',     'Victus 15',          'Ryzen 5 8645HS',        16, 512, 2024, 1299),
    ('Lenovo', 'IdeaPad Gaming 3',   'Ryzen 7 7735HS',        16, 512, 2023,  899),
    ('Apple',  'MacBook Pro 14',     'M2 Pro',                16, 512, 2023, 2299),
    ('Dell',   'XPS 15',             'Intel Core i7-12700H',  32, 1000, 2022, 1999),
    ('ASUS',   'ROG Zephyrus G14',   'Ryzen 9 7940HS',        32, 1000, 2023, 2199),
    ('Acer',   'Aspire 5',           'Intel Core i5-1235U',   16, 512, 2022,  699);

SELECT * FROM laptops;

UPDATE laptops
SET price = 1350
WHERE brand = 'HP' AND model = 'Victus 15';

DELETE FROM laptops
WHERE year < 2022;

SELECT brand FROM laptops;

SELECT * FROM laptops
WHERE price > 1000;

SELECT * FROM laptops
                  LIMIT 3;

SELECT DISTINCT brand FROM laptops;

ALTER TABLE laptops
    ADD COLUMN color TEXT;

UPDATE laptops SET color = 'Black'  WHERE brand IN ('HP','Dell','Lenovo');
UPDATE laptops SET color = 'Silver' WHERE brand IN ('Apple','Acer','ASUS');

ALTER TABLE laptops
DROP COLUMN color;

SELECT * FROM laptops
ORDER BY price DESC;

SELECT COUNT(*) AS total_laptops
FROM laptops;

SELECT MIN(price) AS min_price FROM laptops;
SELECT MAX(price) AS max_price FROM laptops;

SELECT SUM(price) AS total_value
FROM laptops;

SELECT AVG(price) AS avg_price
FROM laptops;

SELECT AVG(year) AS avg_year
FROM laptops;

SELECT brand, COUNT(*) AS laptops_count
FROM laptops
GROUP BY brand;

SELECT cpu, AVG(price) AS avg_price_by_cpu
FROM laptops
GROUP BY cpu
ORDER BY avg_price_by_cpu DESC;