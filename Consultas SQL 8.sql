use sakila;

SELECT title, length, RANK() OVER(ORDER BY length DESC)
FROM film
WHERE length > 0;

--

SELECT title, length, rating, RANK() OVER(PARTITION BY length ORDER BY length DESC)
FROM film
WHERE length > 0;

--

SELECT COUNT(C1.film_id), C1.category_id
FROM film_category C1
LEFT JOIN category C2
	ON C1.category_id = C2.category_id
GROUP BY category_id;

-- 

SELECT COUNT(AC.actor_id), AC.first_name, AC.last_name
FROM sakila.film_actor FA
LEFT JOIN sakila.actor AC
	ON FA.actor_id=AC.actor_id
GROUP BY first_name, last_name
ORDER BY COUNT(AC.actor_id) DESC
LIMIT 1;

--

SELECT COUNT(CU.customer_id), CU.first_name, CU.last_name 
FROM sakila.rental RE
LEFT JOIN sakila.customer CU
	ON RE.customer_id=CU.customer_id
GROUP BY first_name, last_name
ORDER BY COUNT(CU.customer_id) DESC
LIMIT 1;


-- Which is the most rented film? (The answer is Bucket Brotherhood).

SELECT COUNT(rental_id), title
FROM sakila.film FI 
LEFT JOIN sakila.inventory INV 
	ON FI.film_id=INV.film_id
LEFT JOIN sakila.rental RE
	ON INV.inventory_id=RE.inventory_id
GROUP BY FI.title
ORDER BY COUNT(rental_id) DESC
LIMIT 1
    ;



