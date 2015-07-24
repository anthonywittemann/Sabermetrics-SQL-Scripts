SELECT teamID,
        yearID,
        W,
        L,
        (W/(W+L)) as Winning_Percentage,
        R,
        RA,
        R - RA as Run_Differential,
        ((R - RA)/G) as Run_Diff_Per_Game,
        (R*R)/(R*R+RA*RA) as BillJames
FROM Teams
WHERE yearID > 1900 AND (W/(W+L)) > .700
ORDER BY Winning_Percentage DESC, teamID, yearID