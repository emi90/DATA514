SELECT
    carrier_id as carrier, 
    origin_city,
    dest_city,
    MAX(price) as max_price
    INTO f_price
FROM FLIGHTS
WHERE
    origin_city = 'Seattle WA' AND dest_city = 'New York NY' OR
    origin_city = 'New York NY' AND dest_city = 'Seattle WA'
GROUP BY carrier_id, origin_city, dest_city

SELECT carrier, MAX(max_price) as max_price
FROM f_price
GROUP BY carrier