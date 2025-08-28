/* old inner join */

use employees;



select e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date

from 

employees e,
dept_manager dm

where 
  
  e.emp_no = dm.emp_no;

