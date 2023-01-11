-- UPDATE <table_name>
-- SET column1 = value1,
-- 	column2 = value2,
--	.....
--WHERE condition;

-- UPDATE author
--	SET first_name = 'Emrah Safa',
--	last_name = 'Gurkan',
--	email = 'emrah@safa.com',
--	birthday = '1990-01-01'
--WHERE id = 10;

--UPDATE author
--SET first_name = 'xxxx',
--	last_name = 'yyyy'
-- WHERE first_name LIKE 'V%';

--UPDATE author
--SET last_name = 'UPDATE'
--WHERE first_name = 'Olly'
--RETURNING *;

--DELETE <table_name>
--WHERE condition;

--DELETE FROM author
--WHERE id > 11
--RETURNING *;

--SELECT * FROM author

--ODEV 8 

--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

--1
--CREATE TABLE employee (
--	id INTEGER NOT NULL,
--	name VARCHAR(50) NOT NULL,
--	birthday DATE,
--	email VARCHAR(100)
--)

-- 2 Mockaroo

--3
--UPDATE employee
--SET name = 'DOGAN CAN SELEK'
--WHERE name LIKE 'E%';

--UPDATE employee
--SET birthday = '1997-02-15',
--	email = 'dcan@selek.com'
--WHERE name = 'DOGAN CAN SELEK';

--SELECT * FROM employee

--4
DELETE FROM employee
WHERE name LIKE 'DO%' AND email LIKE 'dcan%'