WITH DirFlight AS
    (SELECT DISTINCT origin_city, dest_city
    FROM FLIGHTS
    WHERE dest_city = 'Seattle WA')
SELECT DISTINCT F.origin_city
FROM FLIGHTS AS F JOIN DirFlight AS DF ON F.dest_city = DF.origin_city
WHERE F.origin_city NOT IN (SELECT origin_city FROM DirFlight) AND
F.origin_city != DF.dest_city
ORDER BY F.origin_city