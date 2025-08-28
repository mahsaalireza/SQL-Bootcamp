/* cross join */

/*

Task 1:
Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9. */

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    d.dept_no = 'd009';




/* Task 2:
Return a list with the first 10 employees with all the departments they can be assigned to. */

SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;


/* How many male and how many female managers do we have in the "employees" database? */

SELECT 
    COUNT(e.gender) AS amount
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender
HAVING gender = 'F';
