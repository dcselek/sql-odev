--SELECT title, length FROM film
--WHERE length >= 90 AND length <= 120

-- SELECT title, length FROM film
-- WHERE length NOT BETWEEN 90 AND 120; -- length < 90 OR lenght > 120

-- SELECT rental_rate, replacement_cost FROM film
-- WHERE ( rental_rate BETWEEN 2 AND 4 ) AND (replacement_cost BETWEEN 10 AND 20)

-- SELECT * FROM film
-- WHERE length IN(48, 50, 60); --IN anahtar kelimesiyle istenilen anahtarlari tek tek arar. EXP: WHERE length = 40 OR length = 50 OR length = 60

-- SELECT * FROM customer
-- WHERE first_name LIKE 'Mar%' AND last_name LIKE 'S%'; -- % isareti ya herhangi bir karakter olmamasini ya da birden fazla karakter icin yer tutucu islevini gorur
-- WHERE first_name LIKE 'J_a%'; -- tek bir karakteri tutmak icin ise _ isaretini kullaniyoruz.

SELECT * FROM actor
WHERE first_name ~~* 'ad%'; -- ~~ isareti LIKE yerine gecer. ~~* ILIKE'a esittir. ILIKE : buyuk kucuk sensivitysi bulunmamaktadir. !~~ yaptigimizda ise NOT koydugumuz anlamina gelir.
