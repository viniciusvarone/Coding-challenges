--ID 10318
/*Enunciado: Calculate the net change in the number of products launched by companies in 2020 compared to 2019. Your output should include the company names and the net difference.
             (Net difference = Number of products launched in 2020 - The number launched in 2019.)*/
--link: https://platform.stratascratch.com/coding/10318-new-products?code_type=3


-- Minha primeira solução: 

WITH Cl AS (
    SELECT year, company_name, COUNT(product_name) AS prod_lancados
    FROM car_launches
    GROUP BY year, company_name
    )
SELECT company_name, 
       SUM(CASE WHEN year = 2020 THEN prod_lancados ELSE 'default' END)
       -
       SUM(CASE WHEN year = 2019 THEN prod_lancados ELSE 'default' END)
       AS diferença_liquida
FROM Cl
GROUP BY company_name;


-- Solução alternativa (mais simples):

SELECT company_name, SUM(year = 2020) - SUM(year = 2019) AS net_diff
FROM car_launches
GROUP BY company_name
ORDER BY company_name


/*Comentário: no primeiro caso usamos uma CTE com o with, ou seja, definimos uma consulta temporária com as variáveis que nos interessam para a usarmos como uma espécie de tabela virtual.
              No segundo, mais simples, o uso da CTE foi deixado de lado, e para a operação que retorna o valor da diferença líquida, usamos "SUM(year = 2020) - SUM(year = 2019)", onde 
              year = 2020 retorna 1 (verdadeiro) e 0 (falso) para cada linha e SUM soma a contagem de linhas em que essa condição é verdadeira.*/ 








