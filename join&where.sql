/* JOIN and WHERE Used Together */

select e.first_name, e.last_name, e.hire_date, t.title 
from 
employees e
inner join
titles t
on e.emp_no = t.emp_no

where

e.first_name = 'Margareta' and e.last_name = 'Markovitch';

