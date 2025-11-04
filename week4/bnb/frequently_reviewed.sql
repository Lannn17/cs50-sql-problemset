CREATE VIEW frequently_reviewed AS
SELECT listings.id, property_type, host_name, SUM(comments) AS reviews
FROM listings JOIN reviews ON listings.id = listing_id
GROUP BY listings.id
ORDER BY SUM(comments) DESC;
