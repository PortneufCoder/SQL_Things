-- Retrieve column names using aliases
-- switch colum names

SELECT rental_date, inventory_id, return_date
FROM sakila.rental;

SELECT rental_date AS RentalDate,
		inventory_id AS FilmListID,
        return_date AS ReturnDate
FROM	sakila.rental;

-- Retrieve values based on arithmetic expressions
SELECT replacement_cost-rental_rate,
		film_id AS FilmID,
        length/60
FROM sakila.film;

SELECT replacement_cost-rental_rate AS CostDiff,
		film_id AS FilmID,
        length/60 AS TimeinHour
FROM sakila.film;

 -- choose specified column name and output the result to the new alias
 
SELECT rental_rate AS RentalRate,
		rental_rate + 3 * 4 - 1 AS Result1,
        (rental_rate + 3) * 4 - 1 AS Result2,
        (rental_rate + 3) * (4 - 1) AS Result3,
        rental_rate + (3 * 4) - 1 AS Result4
FROM sakila.film;

SELECT replacement_cost AS ReplacementCost,
		replacement_cost / 5 AS DecimalRentalRate,
        replacement_cost DIV 5 AS IntegerRentalRate, -- integer results
        replacement_cost % 5 AS RemainderRentalRate
FROM sakila.film;

-- retrieve results based on functions

SELECT *
FROM sakila.payment;        

----------------------
-- Integer Ops
----------------------

SELECT amount,
		round(amount) Amnt, round(amount, 1) Amnt1, -- display info until first decimal
        floor(amount) FloorAmnt, ceil(amount) CeilAmnt
FROM sakila.payment;

----------------------
-- String Ops
----------------------
-- Concat
select concat(first_name, ' ', last_name) AS FullName
from sakila.actor;

-- LEFT func
select concat(first_name, ' ', last_name) AS FullName,
		concat(left(first_name, 1), ' ', left(last_name, 2)) AS FirstInitial -- first letter from left and only one of them
FROM sakila.actor;

-- Length func
select concat(first_name, ' ', last_name) AS FullName,
		length(concat(first_name, ' ', last_name)) - 1 AS Length,
        concat(left(first_name, 1), ' ', left(last_name, 1)) AS FirstInitial
from sakila.actor;