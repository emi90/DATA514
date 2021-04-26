WITH SeaDest AS
(SELECT DISTINCT F.origin_city, F.dest_city, C.name AS carrier
FROM FLIGHTS AS F JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE F.origin_city = 'San Francisco CA' AND F.dest_city = 'Seattle WA'),
SeaOrigin AS
(SELECT DISTINCT F.origin_city, F.dest_city, C.name AS carrier
FROM FLIGHTS AS F JOIN CARRIERS AS C ON F.carrier_id = C.cid
WHERE F.dest_city = 'San Francisco CA' AND F.origin_city = 'San Francisco CA')
SELECT carrier FROM SeaDest
UNION
SELECT carrier FROM SeaOrigin

/*
	Started executing query at Line 1
	
	(4 rows affected) 
	
	Total execution time: 00:00:00.113

Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America

*/