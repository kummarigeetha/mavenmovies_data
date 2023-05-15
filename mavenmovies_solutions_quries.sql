/* Write a SQL query to count the number of characters except the spaces for each actor.
 Return first 10 actors name length along with their name. */
 
 select concat(first_name,' ',last_name) as actor_name ,length(first_name)+length(last_name) as count_of_characters
 from actor limit 10;
 
--  List all Oscar awardees(Actors who received Oscar award) with their full names and length of their names.

select concat(first_name,' ',last_name) as actor_fullname, awards,
length(concat(first_name,' ',last_name)) as length_of_fullname
		from actor_award where awards='oscar';
        
 --  Find the actors who have acted in the film ‘Frost Head’.      
 
 select  concat(first_name,' ',last_name)as actor_name from actor a join film_actor f
 on a.actor_id=f.actor_id join film t on f.film_id=t.film_id
 where title='frost head';
 
--  Pull all the films acted by the actor ‘Will Wilson’.

 select title as films from actor a join film_actor f on a.actor_id=f.actor_id 
 join film t on f.film_id=t.film_id
 where first_name = 'will' and last_name='wilson';
 
--  Pull all the films which were rented and return in the month of May.

select title as films  from rental r join inventory i on r.inventory_id=i.inventory_id
  join film f on i.film_id=f.film_id
  where monthname(rental_date)='may' and monthname(return_date)='may';
  
  -- Pull all the films with ‘Comedy’ category.
  
   select t.title as films from category c join film_category f on c.category_id=f.category_id
 join film t on t.film_id=f.film_id where name='comedy';
 













