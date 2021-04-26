SELECT DISTINCT C.name AS carrier
FROM FLIGHTS AS F JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA') OR
(F.origin_city = 'San Francisco CA' AND F.dest_city = 'Seattle WA')
ORDER BY carrier

/*

[2:05:11 PM]	Started executing query at Line 1
	
	(4 rows affected) 
	
	Total execution time: 00:00:01.872

Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America

*/