/* Self-joins */

select * from emp_manager order by emp_no;

select distinct
*
from 
emp_manager e1
join 
emp_manager e2
on e1.emp_no = e2.manager_no;