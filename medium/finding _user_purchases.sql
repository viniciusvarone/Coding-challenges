--ID 10322
/*Enunciado: Identify returning active users by finding users who made a second purchase within 1 to 7 days after their first purchase. Ignore same-day purchases. 
             Output a list of these user_ids.*/
--link: https://platform.stratascratch.com/coding/10322-finding-user-purchases?code_type=3


SELECT DISTINCT(a.user_id)
FROM (
    SELECT user_id, created_at,
           ROW_NUMBER () OVER (
                PARTITION BY user_id
                ORDER BY created_at
           ) AS num_da_compra,
           DATEDIFF(
                created_at,
                LAG (created_at) OVER (PARTITION BY user_id ORDER BY created_at)
                ) AS Dias_desde_a_primeira_compra
    FROM amazon_transactions
   ) AS a
WHERE a.num_da_compra = 2 AND
      a.Dias_desde_a_primeira_compra BETWEEN 1 AND 7;
