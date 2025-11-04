SELECT salaries.year, salary FROM salaries
JOIN players ON players.id = player_id
WHERE first_name = 'Cal' AND last_name = 'Ripken'
ORDER BY salaries.year DESC;
