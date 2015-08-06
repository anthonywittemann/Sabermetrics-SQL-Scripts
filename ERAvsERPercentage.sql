SELECT playerID,
        9 * SUM(ER) / (SUM(IPOuts) / 3) as ERA,
        9 * SUM(R) / (SUM(IPOuts) / 3) as RA9,
        SUM(ER) / SUM(R) as ERPercentage
FROM Pitching p
WHERE yearID >= 2000 AND yearID <= 2009
GROUP BY playerID
HAVING SUM(IPOuts) >= 3000
ORDER BY ERPercentage, playerID