--ID 9917
/*enunciado: Compare each employee's salary with the average salary of the corresponding department.
             Output the department, first name, and salary of employees along with the average salary of that department.*/
--link: https://platform.stratascratch.com/coding/9917-average-salaries?code_type=3


SELECT e.department, e.first_name, e.salary, d.media_do_departamento
FROM employee e    
JOIN(
    SELECT department,
           AVG(salary) AS media_do_departamento
    FROM employee
    GROUP BY department
    ORDER BY media_do_departamento
    ) as d
ON e.department = d.department; 
