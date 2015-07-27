SELECT CONCAT(nameFirst, " ", nameLast) as Name, 
        ERA,
        (3*BB + 3*HBP + 13*HR - 2*SO)/(IPOuts/3) + 3.139 as FIP
FROM Pitching p
JOIN Master m
ON p.playerID = m.playerID
WHERE teamID = 'ATL' AND yearID = 1998 AND GS >= 10
ORDER BY ERA-FIP DESC