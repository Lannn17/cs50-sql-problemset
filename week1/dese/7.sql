SELECT schools.name FROM schools
JOIN districts ON districts.id = district_id
WHERE districts.name = 'Cambridge';
