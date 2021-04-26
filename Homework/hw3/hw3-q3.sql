WITH ShortFlights AS
    (SELECT F1.origin_city, COUNT(F1.actual_time) as n_flights
    FROM FLIGHTS AS F1
    WHERE 
        F1.actual_time < 180 AND
        F1.canceled = 0
    GROUP BY F1.origin_city)
SELECT DISTINCT 
    F.origin_city, 
    ISNULL((SF.n_flights * 100. / COUNT(F.actual_time)), 0) as percentage 
FROM FLIGHTS AS F LEFT JOIN ShortFlights AS SF 
    ON F.origin_city = SF.origin_city
WHERE F.canceled = 0
GROUP BY F.origin_city, SF.n_flights
ORDER BY percentage, origin_city

	
--	(327 rows affected) 
	
--	Total execution time: 00:00:09.392

/*Guam TT	0.00000000000
Pago Pago TT	0.00000000000
Aguadilla PR	28.89733840304
Anchorage AK	31.81208053691
San Juan PR	33.66053169734
Charlotte Amalie VI	39.55882352941
Ponce PR	40.98360655737
Fairbanks AK	50.11655011655
Kahului HI	53.51447135262
Honolulu HI	54.73902882368
San Francisco CA	55.82886453718
Los Angeles CA	56.08089082298
Seattle WA	57.60938779223
Long Beach CA	62.17643951399
New York NY	62.37183413672
Kona HI	63.16079295154
Las Vegas NV	64.92025637203
Christiansted VI	65.10067114093
Newark NJ	65.84997109698
Plattsburgh NY	66.66666666666*/