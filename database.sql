-- use ecommerce_db;
ALTER TABLE categories 
ADD COLUMN image_data LONGBLOB;
UPDATE categories 
SET image_data = LOAD_FILE('C:/image.jpg') 
WHERE id = 1;
SELECT id, name, LENGTH(image_data) FROM categories;
SHOW VARIABLES LIKE "secure_file_priv";
UPDATE categories 
SET image_data = LOAD_FILE('C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\image.jpg') 
WHERE id = 1;
SELECT * FROM categories;
SELECT id, name, LENGTH(image_data) FROM categories WHERE id = 1;