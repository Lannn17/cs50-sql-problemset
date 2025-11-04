SELECT districts.name, proficient FROM districts
JOIN staff_evaluations ON district_id = districts.id
ORDER BY proficient DESC LIMIT 10;
