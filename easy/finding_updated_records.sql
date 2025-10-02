--ID 10299
/*enunciado: We have a table with employees and their salaries, however, some of the records are old and contain outdated salary information. 
             Find the current salary of each employee assuming that salaries increase each year. Output their id, first name, last name, 
             department ID, and current salary. Order your list by employee ID in ascending order.*/
--link: https://platform.stratascratch.com/coding/10299-finding-updated-records?code_type=3


SELECT f.*
FROM ms_employee_salary as f
JOIN (
    SELECT id, MAX(salary) as current_salary
    FROM ms_employee_salary
    GROUP BY id 
    ) as m 
ON f.id = m.id 
AND f.salary = m.current_salary;
