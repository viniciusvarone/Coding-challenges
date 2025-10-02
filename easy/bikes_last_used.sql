--ID 10176
/*Enunciado: Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use 
             (i.e., the date-time the bike was returned). Order the results by bikes that were most recently used.*/
--link: https://platform.stratascratch.com/coding/10176-bikes-last-used?code_type=3


SELECT bike_number, MAX(end_time) AS ultimo_uso
FROM dc_bikeshare_q1_2012
GROUP BY bike_number
ORDER BY ultimo_uso DESC;
