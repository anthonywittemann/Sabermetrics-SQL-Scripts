SELECT b.yearID,
        SUM(b.H) as Total_H,
        SUM(b.AB) as Total_AB,
        SUM(b.H) / SUM(b.AB) as League_AVG
FROM Batting b
JOIN Pitching p
ON p.playerID = b.playerID
AND p.yearID = b.yearID
AND p.stint = b.stint
GROUP BY yearID
ORDER BY League_AVG DESC, yearID 