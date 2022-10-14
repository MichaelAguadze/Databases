--Query for film_id and total payment
select  film_id, sum(amount) as total_amount
from rental
	inner join payment on rental.rental_id = payment.rental_id
	inner join inventory on rental.inventory_id = inventory.inventory_id
group by film_id;

--create view from query
create view film_amount as
select  film_id, sum(amount) as total_amount
from rental
	inner join payment on rental.rental_id = payment.rental_id
	inner join inventory on rental.inventory_id = inventory.inventory_id
group by film_id;

---Query for film_id and total copies
select inventory.film_id, count(inventory.film_id) as total_copies
from inventory
	left join film on inventory.film_id = film.film_id
group by inventory.film_id;

--Create view for query
create view film_copies as
select inventory.film_id, count(inventory.film_id) as total_copies
from inventory
	left join film on inventory.film_id = film.film_id
group by inventory.film_id;

--Combine query for film_id, total copies and total amount greater that 200
select film.film_id, title, description, rental_duration, rental_rate, replacement_cost, rating, total_copies, total_amount
from film, (select  film_id, sum(amount) as total_amount
from rental
	inner join payment on rental.rental_id = payment.rental_id
	inner join inventory on rental.inventory_id = inventory.inventory_id
group by film_id) as deriv, (select inventory.film_id, count(inventory.film_id) as total_copies
from inventory
	left join film on inventory.film_id = film.film_id
group by inventory.film_id) as derivee
where total_amount > 200;