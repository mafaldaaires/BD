SELECT COUNTRY.Name, GENRE.Label, COUNT(STREAM.StreamDate) AS N
FROM (COUNTRY,GENRE) LEFT OUTER JOIN (MOVIE_GENRE NATURAL JOIN MOVIE NATURAL JOIN STREAM NATURAL JOIN CUSTOMER)
ON (GENRE.GenreId = MOVIE_GENRE.GenreId AND CUSTOMER.Country = COUNTRY.Name)
JOIN REGION USING (RegionId)
WHERE REGION.Name='Other Countries'
GROUP BY COUNTRY.Name, GENRE.Label
ORDER BY COUNTRY.Name ASC, GENRE.Label ASC;