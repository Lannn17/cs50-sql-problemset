SELECT teams.name, ROUND(AVG(salary), 2) AS 'average salary' FROM teams
JOIN salaries ON team_id = teams.id
WHERE salaries.year = 2001
GROUP BY teams.name
ORDER BY "average salary" ASC LIMIT 5;
