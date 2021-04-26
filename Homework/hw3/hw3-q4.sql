WITH DirFlight AS
    (SELECT DISTINCT origin_city, dest_city
    FROM FLIGHTS
    WHERE origin_city = 'Seattle WA')
SELECT DISTINCT F.dest_city
FROM FLIGHTS AS F JOIN DirFlight AS DF ON F.origin_city = DF.dest_city
WHERE F.dest_city NOT IN (SELECT dest_city FROM DirFlight) AND
F.dest_city != DF.origin_city
ORDER BY F.dest_city

/*

	(256 rows affected) 
	
	Total execution time: 00:00:16.900

Aberdeen SD
Abilene TX
Adak Island AK
Aguadilla PR
Akron OH
Albany GA
Albany NY
Alexandria LA
Allentown/Bethlehem/Easton PA
Alpena MI
Amarillo TX
Appleton WI
Arcata/Eureka CA
Asheville NC
Ashland WV
Aspen CO
Atlantic City NJ
Augusta GA
Bakersfield CA
Bangor ME

*/