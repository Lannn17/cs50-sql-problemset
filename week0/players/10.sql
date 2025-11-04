SELECT first_name, last_name AS "USA players" FROM players WHERE birth_country = 'USA' AND height is NOT NULL ORDER BY height DESC;
