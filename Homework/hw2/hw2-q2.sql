SELECT 
    F.flight_num AS f1_flight_num,
    F.origin_city AS f1_origin_city,
    F.dest_city AS f1_dest_city,
    F.actual_time AS f1_actual_time,
    F.carrier_id AS f1_cid
INTO f1
FROM FLIGHTS as F
    WHERE F.origin_city = 'Seattle WA' AND
    F.month_id = 7 AND
    F.day_of_month = 15

SELECT 
    F.flight_num AS f2_flight_num,
    F.origin_city AS f2_origin_city,
    F.dest_city AS f2_dest_city,
    F.actual_time AS f2_actual_time,
    F.carrier_id AS f2_cid
INTO f2
FROM FLIGHTS as F
WHERE F.dest_city = 'Boston MA' AND
    F.month_id = 7 AND 
    F.day_of_month = 15

SELECT *, (f1_actual_time + f2_actual_time) AS actual_time
INTO f_all
FROM f1 JOIN f2
ON f1.f1_dest_city = f2.f2_origin_city AND
f1.f1_cid = f2.f2_cid

SELECT * FROM f_all
WHERE f_all.actual_time < 420