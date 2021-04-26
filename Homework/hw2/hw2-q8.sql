SELECT
    carrier_id as name,
    SUM(departure_delay) as delay
FROM FLIGHTS
GROUP BY carrier_id