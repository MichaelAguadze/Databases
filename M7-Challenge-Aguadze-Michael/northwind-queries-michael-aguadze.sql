--Categories of products in database
select category
from products p ;

--Products made by Dell
select * 
from products p 
where product_name like "Dell%";

--All orders shipped to Pennsylvania
select *
from orders od
where ship_country = "United States" and od.ship_city = "Pennsylvania";

--First and Last names of employees with last names starting with W
select first_name, last_name
from employees e 
where e.last_name like "W%";

--Customers from zip codes starting with 55
select *
from customers c 
where c.postal_code like "55%"; 

--List all customers from zip codes that end with 0
select *
from customers c 
where c.postal_code like "%0"

--First name, Last name and email of all customers with a .org email
select first_name, last_name, email  
from employees e
where e.email like "%.org";

--First and Last name and phone number of all customers from 202 area code
select first_name, last_name, phone
from customers c 
where c.phone  like "1-(202)%";

--List of first name, last name and phone number of all customers from  202 area code ordered by lastname, firstname
select first_name, last_name, phone
from customers c 
where c.phone  like "1-(202)%"
order by c.last_name, c.first_name ;