-- SELECT rental_rate, COUNT(*) FROM film
-- GROUP BY rental_rate; -- Burada ayni olan rental_rate leri grupladik ve sayilarini yazdirdik.

-- SELECT rental_rate, MAX(length) FROM film
-- GROUP BY rental_rate; -- Rental ratelere gore en uzun filmler.

-- SELECT rating, COUNT(*) FROM film
-- GROUP BY rating; -- Ratinglere gore film sayisi.

-- SELECT replacement_cost, MIN(length) FROM film
-- GROUP BY replacement_cost ORDER BY replacement_cost ASC -- Her bir replacement_cost'a denk gelen en kisa film ve bu replacement_costlarin artarak siralanisi

-- SELECT replacement_cost, rental_rate, MIN(length) FROM film
-- GROUP BY replacement_cost, rental_rate ORDER BY replacement_cost, rental_rate DESC;
-- HAVING

-- SELECT rental_rate, COUNT(*) FROM film
-- GROUP BY rental_rate HAVING COUNT(*) > 325; -- HAVING anahtar kelimesi gruplanmis verilerin uzerinde kosul verebiliyoruz. WHERE ile yapamiyoruz.

--Ornek WHERE ile yapilmis hali
-- SELECT rental_rate, COUNT(*) FROM film
-- WHERE rental_rate != 2.99
-- GROUP BY rental_rate -- ayni sonucu veriyor ama burada rental_rate i bilmemiz gerek. Gruplanmis veriye kosul eklemiyoruz.

-- SELECT staff_id, COUNT(*) FROM payment
-- GROUP BY staff_id
-- HAVING COUNT(*) > 7300;

-- SELECT customer_id, SUM(amount) FROM payment
-- GROUP BY customer_id
-- HAVING SUM(amount) > 100 ORDER BY SUM(amount);

-- ODEV 7
-- film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
SELECT rating FROM film
GROUP BY rating;
--film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost 
HAVING COUNT(*) > 50;
--customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir?
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id;
-- city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.
SELECT country_id, COUNT(*) FROM city 
GROUP BY country_id ORDER BY COUNT(8) DESC
LIMIT 1;