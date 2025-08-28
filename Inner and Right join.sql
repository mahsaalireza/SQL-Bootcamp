/* Inner join

Obtaining info about the department names  using dept_manager and departments table.

 */
 
 SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;
 
 
  SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;


SELECT 
    e.emp_no, e.first_name, e.last_name, e.hire_date, m.dept_no
FROM
    dept_manager_dup m
        INNER JOIN
    employees e ON e.emp_no = m.emp_no
ORDER BY emp_no;