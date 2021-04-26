SELECT
    carrier_id as name,
    origin_city,
    SUM(canceled) as is_cancel,
    COUNT(canceled) as tot_flights,
    SUM(canceled) *100. / COUNT(canceled) as percentage
    INTO f_cancel
FROM FLIGHTS
GROUP BY carrier_id, origin_city
HAVING origin_city = 'Seattle WA' AND
SUM(canceled) *100. / COUNT(canceled) > 0.5

SELECT name, percentage FROM f_cancel