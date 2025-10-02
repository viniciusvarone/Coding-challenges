--ID 9991
/*Enunciado: Find songs that have ranked in the top position. Output the track name and the number of times it ranked at the top. 
             Sort your records by the number of times the song was in the top position in descending order.*/
--link: https://platform.stratascratch.com/coding/9991-top-ranked-songs?code_type=3


SELECT trackname, COUNT(id) AS qtd_de_vezes_em_alta
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY qtd_de_vezes_em_alta DESC;
