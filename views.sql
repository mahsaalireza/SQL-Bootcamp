/* views */

CREATE OR REPLACE VIEW v_average_salary AS
    SELECT 
        ROUND(AVG(s.salary), 2) AS average_salary
    FROM
        dept_manager dm
            JOIN
        salaries s ON dm.emp_no = s.emp_nov_average_salaryaverage_salary;
