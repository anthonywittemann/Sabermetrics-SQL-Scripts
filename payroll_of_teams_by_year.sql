SELECT t.yearID,
        t.teamID,
        s.Payroll
FROM Teams t
JOIN (
        SELECT yearID, teamID, SUM(salary) as Payroll 
        FROM Salaries
        GROUP BY teamID, yearID
      ) s
ON t.yearID = s.yearID
    AND t.teamID = s.teamID
ORDER BY yearID, teamID