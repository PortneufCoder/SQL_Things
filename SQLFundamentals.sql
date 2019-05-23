select 1+1;

select 'ThisValue' as FiorstValue;

select mod(38, 6)

-- retrieve all data from Table

USE sakila;
select *
from city;

-- Retrieve all data ordered by single column

SELECT * 
FROM sakila.actor
order by first_name desc;

select *
from sakila.actor
where actor_id >= 50;

select first_name, last_name
from sakila.actor
order by first_name desc;

select actor_id, first_name, last_name
from sakila.actor
where actor_id > 100
order by first_name, last_name desc;

-- retrieve empty result set, see Columns but no data

select *
from sakila.category
where 1 = 2;

