
/* stored procedures - non-parametric */

drop procedure if exists select_employees;

delimiter $$

use employees$$

create procedure select_employees()

Begin

select * from employees
limit 1000;


end $$

delimiter ;

call employees.select_employees();


/* stored procedures - parametric / creating a procedure to retrieve the average salary of a specific employee */


delimiter $$
create procedure emp_avg_salary(IN p_emp_no INTEGER)

begin

select e.first_name, e.last_name, avg(s.salary)

from salaries s join employees.employees e on s.emp_no = e.emp_no

where e.emp_no = p_emp_no

group by e.emp_no;

end$$

delimiter ;



call emp_avg_salary(11300);

