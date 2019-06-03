-- DATE FORMAT functions

select concat(first_name, ' ', last_name) as FullName,
		date_format(last_update, '%m/%d/%y') as LastUpdated1,
        date_format(last_update, '%d-%m-%Y') as LastUpdated2,
        date_format(last_update, '%d %b %Y %T:%f') as LastUpdated3
from sakila.actor;

-- DATETIME funcs

select rental_date,
		dayofweek(rental_date) as DayOfWeek,
        quarter(rental_date) as Quarter,
        week(rental_date) as Week,
        monthname(rental_date) as MOnthName
from sakila.rental;