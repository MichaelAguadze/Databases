select category
from products p ;

select * 
from products p 
where product_name like "Dell%";

select *
from orders od
where ship_country = "United States" and od.ship_city = "Pennsylvania";

select first_name, last_name
from employees e 
where e.last_name like "W%";

select postal_code  
from customers c 
where c.postal_code like "55%"; 

select postal_code
from customers c 
where c.postal_code like "%0"

select first_name, last_name, email  
from employees e
where e.email like "%.org";

select first_name, last_name, phone
from customers c 
where c.phone  like "1-(202)%";

select first_name, last_name, phone
from customers c 
where c.phone  like "1-(202)%"
order by c.last_name, c.first_name ;