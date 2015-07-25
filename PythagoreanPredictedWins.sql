SELECT teamID, 
        yearID, 
        W, 
        G * ((R*R)/(R*R+RA*RA)) as predictedW,
        G * ((R*R)/(R*R+RA*RA)) - W as Error
FROM Teams
WHERE teamID = 'LAN' AND yearID >= 1980
ORDER BY Error DESC