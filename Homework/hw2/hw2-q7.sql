SELECT SUM(capacity) as capacity
FROM
(SELECT 
    origin_city,
    dest_city,
    capacity,
    month_id,
    day_of_month
FROM FLIGHTS
WHERE 
    origin_city = 'Seattle WA' AND dest_city = 'San Francisco CA' OR
    origin_city = 'San Francisco CA' AND dest_city = 'Seattle WA' AND
    month_id = 7 AND
    day_of_month = 10)
AS capacity