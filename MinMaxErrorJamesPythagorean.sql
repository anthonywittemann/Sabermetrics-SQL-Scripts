SELECT w.yearID, 
        MIN(w.Error) as MINError, 
        MAX(w.Error) as MAXError, 
        ROUND(STDDEV(w.Error), 3) as STDError
FROM (
        SELECT teamID, yearID, W,
                (G * ((R*R)/(R*R + RA*RA))) as predictedW,
                ((G * ((R*R)/(R*R + RA*RA))) - W) as Error
        FROM Teams
        WHERE yearID >= 1955 
        ) w
GROUP BY w.yearID
ORDER BY STDError DESC