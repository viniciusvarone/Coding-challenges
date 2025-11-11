--ID 9622
--Enunciado: "Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type."
--Link: https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=3

SELECT city, property_type, 
       AVG(bathrooms) AS média_banheiros,
       AVG(bedrooms) AS média_quartos
FROM airbnb_search_details
GROUP BY city, property_type;
