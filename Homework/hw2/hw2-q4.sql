SELECT 
    COUNT(flight_num) as n_flights,
    carrier_id,
    month_id,
    day_of_month,
    day_of_week_id
    INTO f_count
FROM FLIGHTS
GROUP BY carrier_id, month_id, day_of_month, day_of_week_id
HAVING COUNT(flight_num) > 1000

SELECT DISTINCT carrier_id as name
FROM f_count