--ID: 10353
/*Enunciado: Management wants to analyze only employees with official job titles. Find the job titles of the employees with the highest salary. 
             If multiple employees have the same highest salary, include all their job titles.*/
--Link: https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries?code_type=3


SELECT t.worker_title 
FROM title t
LEFT JOIN worker w
    ON t.worker_ref_id = w.worker_id
WHERE salary IN (
        SELECT MAX(salary)
        FROM title t
        LEFT JOIN worker w 
        ON t.worker_ref_id = w.worker_id);
