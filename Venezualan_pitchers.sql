SELECT CONCAT(m.nameFirst, " ", m.nameLast) as playerName,
        m.BirthCountry as Country, 
        p.yearID as Year, 
        (p.IPOuts / 3) as IP, 
        p.ERA as ERA, 
        (3*BB + 3*HBP + 13*HR - 2*SO)/(p.IPOuts / 3) + 3.2 as FIP
FROM Pitching p
JOIN Master m
ON p.playerID = m.playerID
WHERE m.BirthCountry = "Venezuela" AND (p.IPOuts / 3) > 60