SELECT salaries.year, ROUND(AVG(salary), 2) FROM salaries
GROUP BY salaries.year
ORDER BY salaries.year DESC;
