SELECT first_name, last_name, salary, "HR", salaries.year FROM salaries
JOIN players ON salaries.player_id = players.id
JOIN performances ON performances.player_id = players.id AND salaries.year = performances.year
ORDER BY players.id, salaries.year DESC, "HR" DESC, salary DESC;
