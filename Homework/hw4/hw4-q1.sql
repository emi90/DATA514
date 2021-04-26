WITH SelfEmail AS
    (SELECT E.eid, E.pidFrom AS pid, E.length
    FROM Email as E JOIN EmailTo AS ET ON E.eid = ET.eid
    WHERE E.pidFrom = ET.pidTo)
SELECT DISTINCT P.name, COUNT(SE.eid) AS count
FROM SelfEmail AS SE JOIN Person AS P ON SE.pid = P.pid
WHERE SE.length < 1000
GROUP BY P.name