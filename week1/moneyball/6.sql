SELECT teams.name, SUM("H") AS 'Total hits' FROM teams
JOIN performances ON teams.id = team_id
WHERE performances.year = 2001
GROUP BY teams.name
ORDER BY SUM("H") DESC LIMIT 5;
