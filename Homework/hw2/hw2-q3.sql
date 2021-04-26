SELECT TOP(1) W.day_of_week, AVG(F.arrival_delay) as avg_delay
FROM FLIGHTS as F JOIN WEEKDAYS as W
ON F.day_of_week_id = W.did
GROUP BY W.day_of_week
--ORDER BY avg_delay DESC