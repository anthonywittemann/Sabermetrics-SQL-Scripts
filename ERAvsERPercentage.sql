SELECT playerID,
        9 * SUM(ER) / (SUM(IPOuts) / 3) as ERA,
        9 * SUM(R) / (SUM(IPOuts) / 3) as RA9,
        SUM(ER) / SUM(R) as ERPercentage
FROM Pitching
WHERE SUM(IPOuts) >= 3000 AND yearID >= 2000 AND yearID <= 2009
GROUP BY playerID
ORDER BY ERPercentage, playerID