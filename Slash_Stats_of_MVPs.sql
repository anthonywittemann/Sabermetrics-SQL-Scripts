SELECT CONCAT(m.nameFirst, " ", m.nameLast) as playerName,
        b.yearID as Year,
        (H / AB) as BA,
        (H+BB+HBP)/(AB+HBP+BB+SF) as OBP,
        (H+2B+2*3B+3*HR)/AB as SLG
FROM Batting b
JOIN Master m
ON m.playerID = b.playerID
JOIN AwardsPlayers a 
ON b.playerID = a.playerID AND b.yearID = a.yearID
WHERE b.yearID > 1990 AND a.awardID = "Most Valuable Player"
ORDER BY SLG DESC, b.playerID