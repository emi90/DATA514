WITH MaxTime AS
    (SELECT F1.origin_city, MAX(F1.actual_time) as time
    FROM FLIGHTS as F1
    GROUP BY F1.origin_city)
SELECT DISTINCT F.origin_city as city
FROM FLIGHTS as F, MaxTime as MT
WHERE F.origin_city = MT.origin_city AND 
    F.actual_time = MT.time AND
    F.actual_time < 180 AND
    F.canceled = 0
ORDER BY F.origin_city

/*
Started executing query at Line 1
	
	(109 rows affected) 
	
	Total execution time: 00:00:06.408	


Aberdeen SD
Abilene TX
Alpena MI
Ashland WV
Augusta GA
Barrow AK
Beaumont/Port Arthur TX
Bemidji MN
Bethel AK
Binghamton NY
Brainerd MN
Bristol/Johnson City/Kingsport TN
Butte MT
Carlsbad CA
Casper WY
Cedar City UT
Chico CA
College Station/Bryan TX
Columbia MO
Columbus GA

*/