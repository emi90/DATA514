WITH DirFlight AS
    (SELECT DISTINCT origin_city, dest_city
    FROM FLIGHTS
    WHERE origin_city = 'Seattle WA'),
OneStop AS 
(SELECT DISTINCT F.origin_city, F.dest_city
FROM FLIGHTS AS F JOIN DirFlight AS DF ON DF.dest_city = F.origin_city),
OneAndDir AS
(SELECT * FROM DirFlight
UNION
SELECT * FROM OneStop)
SELECT DISTINCT dest_city as city
FROM FLIGHTS AS F
WHERE dest_city NOT IN (SELECT dest_city FROM OneAndDir)
ORDER BY dest_city

/*
(3 rows affected) 
	
	Total execution time: 00:00:13.412

Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL

*/