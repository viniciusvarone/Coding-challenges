SELECT 
    (SELECT MAX(salary) FROM db_employee WHERE department_id IN (4))
    -
    (SELECT MAX(salary) FROM db_employee WHERE department_id IN (1))
AS Diferença_salario;

-- conclusão: a diferença absoluta entre os maiores salários dos departamentos citados é de 2400.
