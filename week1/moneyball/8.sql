SELECT salary FROM salaries
JOIN players ON players.id = salaries.player_id
JOIN performances ON players.id = performances.player_id
WHERE salaries.year = 2001 AND "HR" = (
    SELECT MAX("HR") FROM performances WHERE performances.year = 2001
);
