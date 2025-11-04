SELECT city, COUNT(*) AS "Number of public school" FROM schools
WHERE "type" = 'Public School'
GROUP BY city ORDER BY COUNT(*) DESC, city LIMIT 10;
