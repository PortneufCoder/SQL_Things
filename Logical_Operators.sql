select *
from sakila.actor
where first_name = 'Kenneth';
-- AND
select *
from sakila.actor
where first_name = 'Kenneth' and actor_id < 100; -- both conditions must be true

select *
from sakila.actor
where first_name = 'Kenneth' and actor_id < 100 and last_name = 'Torn';

-- OR
select *
from sakila.actor
where first_name = 'Kenneth' or actor_id < 100; -- return results for any true condition

select *
from sakila.actor
where first_name = 'Kenneth' or actor_id < 100 or last_name = 'Temple';

-- NOT
select actor_id, first_name, last_name
from sakila.actor
where not actor_id = 5;

select actor_id, first_name, last_name
from sakila.actor
where actor_id <> 5; -- same result as above, less confusing

-- AND + OR

select * 
from sakila.actor
where first_name = 'Kenneth' and actor_id < 100 or last_name = 'Temple'; -- order of precedence AND before OR

select * 
from sakila.actor
where first_name = 'Kenneth' or actor_id < 100 AND last_name = 'Temple';

select * 
from sakila.actor
where (first_name = 'Kenneth' and actor_id < 100) or last_name = 'Temple';
