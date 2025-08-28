/*
SQL Subqueries nested in SELECT and FROM - Exercise Text

Task 1:
Starting your code with “DROP TABLE”, 
create a table called “emp_manager” (emp_no – integer of 11, not null; dept_no – CHAR of 4, null; manager_no – integer of 11, not null).
*/

DROP TABLE IF EXISTS emp_manager;
CREATE TABLE emp_manager (
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);

use employees;

insert into emp_manager select
U.*
from (

SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B
    
    union select C.*
    from (
    
    select e.emp_no as employee_ID,
    MIN(de.dept_no) as department_code,
     (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
                    
                    
		from employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    
	where e.emp_no = 110022) as C
    
    
    union 
    select D.*
    from(
     select e.emp_no as employee_ID,
    MIN(de.dept_no) as department_code,
     (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
                    from
                           employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
	where e.emp_no = 110039
    ) as D
    );
