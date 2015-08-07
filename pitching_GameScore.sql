SELECT playerID,
        yearID, 
        (50*GS + IPOuts + SO - 2*H - 4*ER - 2*(R-ER) - BB + 2*(IPOuts/3 - GS*4))/GS as GameScore
FROM Pitching
WHERE yearID >= 1980 and GS >= 20
ORDER BY GameScore DESC, playerID, yearID