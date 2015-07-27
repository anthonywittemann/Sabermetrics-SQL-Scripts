SELECT a.playerID,
        a.yearID,
        a.startingPos,
        SUM(b.H + b.2B + 2*b.3B + 3 * b.HR) as Post_TB
FROM BattingPost b
RIGHT JOIN AllstarFull a
ON b.playerID = a.playerId AND b.yearID = a.yearID
WHERE a.yearID >= 1950
GROUP BY playerID, yearID
ORDER BY Post_TB DESC, playerID, yearID