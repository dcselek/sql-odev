-- CREATE TABLE <table_name> (
--	<column_name> <data_type> <constraint>,
--	...
--	<column_name> <data_type> <constraint>;
--)
--Tablo olusturma.
-- CREATE TABLE author(
--	id SERIAL PRIMARY KEY,
--	first_name VARCHAR(50) NOT NULL,
--	last_name VARCHAR(50) NOT NULL,
--	email VARCHAR(100),
--	birthday DATE
--);

-- INSERT INTO author (first_name, last_name, email, birthday)
-- VALUES
--	('Dogan Can','Selek','dogancan.selek@gmail.com', '1997-02-15'),
--	('Sabahattin','Ali','sabahattin.ali@gmail.com','1907-02-25'),
--	('Victor','Hugo','victor.hugo@gmail.com','1802-02-26'),
--	('Fyodor Mikhailovich','Dostoevsky','dostoevski@gmail.com','1821-11-11');

--Referans alarak tablo olusturma

--CREATE TABLE author2 (LIKE author);

-- Tablolar arasi veri kopyalama

-- INSERT INTO author2 
-- SELECT * FROM author
-- WHERE first_name = 'Sabahattin';

-- SELECT * FROM author2;
--Verileriyle birlikte tabloyu kopyalamak

-- CREATE TABLE author3 AS
-- SELECT * FROM author;

-- SELECT * FROM author3;

-- Tablo silmek

-- DROP TABLE IF EXISTS author2;