SELECT DISTINCT F.flight_num 
    FROM FLIGHTS as F JOIN CARRIERS as C
    ON F.carrier_id = C.cid
    WHERE F.origin_city = 'Seattle WA' AND 
    F.dest_city = 'Boston MA' AND
    C.name = 'Alaska Airlines Inc.';