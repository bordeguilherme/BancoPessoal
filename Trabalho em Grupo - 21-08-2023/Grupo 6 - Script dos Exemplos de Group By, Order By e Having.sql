-- Agrupa e lista os clientes com a quantidade de pagamentos (Estevão)

select customer_id, count(customer_id)
from payment 
group by customer_id;

-- Lista nome e sobrenome dos atores ordenados pelo sobrenome em ordem ascendente (Guilherme)

select first_name, last_name 
from actor
order by last_name desc ;

-- Lista filmes por categoria e nome em ordem alfabética (Rafael)
SELECT title, name FROM 
film 
INNER JOIN film_category ON film.film_id = film_category.film_id 
INNER JOIN category ON category.category_id = film_category.category_id 
ORDER BY name ASC, title asc;

-- lista os clientes com mais de 40 locações (José)

select customer_id, count(customer_id)
from payment 
group by customer_id
having count(customer_id) > 40;


-- lista os nomes de atores que se repetem e a sua quantidade (Felipe)

select first_name, COUNT(first_name)  from actor
group by first_name
having COUNT(first_name) > 1
order by COUNT(first_name) desc;






