select actor_id, first_name, last_name
from sakila.actor
where actor_id < 100;

select actor_id, first_name, last_name
from sakila.actor
where first_name > 'Nick';

-- Nick will be removed from result set

select actor_id, first_name, last_name
from sakila.actor
where first_name != 'Nick';