/* 1) Select all the actors with the first name ‘Scarlett’.
*/
SELECT * FROM sakila.actor
WHERE first_name IN ('Scarlett');

/* 2) Select all the actors with the first name ‘Scarlett’.
*/
SELECT * FROM sakila.actor
WHERE last_name IN ('Johansson');

/* 3) How many films (movies) are available for rent?
*/
SELECT COUNT(rental_duration) FROM sakila.film;

/* 4) How many films have been rented?
*/
SELECT COUNT(rental_duration) FROM sakila.film
WHERE rental_duration > 0;

/* 5) What is the shortest and longest rental period?
*/
SELECT max(rental_duration) AS 'max - rental duration', min(rental_duration) AS 'min - rental duration' FROM sakila.film;

/* 6) What are the shortest and longest movie duration? Name the values max_duration and min_duration
*/
SELECT max(length) AS 'max_duration', min(length) AS 'min_duration' FROM sakila.film;

/* 7) What's the average movie duration?
*/
SELECT avg(length) FROM sakila.film;

/* 8) What's the average movie duration expressed in format (hours, minutes)?
*/
SELECT FORMAT((avg(length)/60),2) FROM sakila.film;

/* 9) How many movies longer than 3 hours?
*/
SELECT (COUNT(length)) FROM sakila.film
WHERE (length/60) > 3;

/* 10) Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.
*/
SELECT LOWER(first_name), LOWER(last_name), LOWER(email) FROM sakila.customer; 

/* 11) What's the length of the longest film title?
*/
SELECT title, max(length(title)) AS 'Longest Film Title' FROM sakila.film;
