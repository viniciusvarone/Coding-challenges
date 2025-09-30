--ID 10308
--enunciado: Calculates the difference between the highest salaries in the marketing and engineering departments. Output just the absolute difference in salaries.
--link: https://platform.stratascratch.com/coding/10308-salaries-differences?code_type=3

-- Primeira alternativa de solução:

SELECT 
    (SELECT MAX(salary) FROM db_employee WHERE department_id IN (4))
    -
    (SELECT MAX(salary) FROM db_employee WHERE department_id IN (1))
AS Diferença_salario;



-- Segunda alternativa de solução: 

SELECT ABS (MAX((CASE 
            WHEN dept.department = 'marketing' THEN emp.salary
            END
        ))
        -
        MAX((CASE 
            WHEN dept.department = 'engineering' THEN emp.salary
            END
        )))
FROM db_employee emp
JOIN db_dept dept ON emp.department_id = dept.id
WHERE dept.department IN ('marketing', 'engineering');


/* Conclusão: ambas resoluções retornam o mesmo valor de 2400, que é a diferença absoluta entre o maior salário de marketing e o maior salário de engenharia. 
   A segunda query, porém, é mais exata, pois referencia diretamente o nome do departamento com o uso do JOIN.*/
