
-- *** The Lost Letter ***
SELECT * FROM scans
JOIN packages ON packages.id = package_id
JOIN addresses ON addresses.id = address_id
WHERE contents LIKE '%Letter%' -- Not sure the whole contents so use LIKE
AND ("address" = '900 Somerville Avenue' OR "address" LIKE '%2 Finnegan Street%');

-- Then we got 2 results, the contents of one result is "Congratulatory letter" so it should be the lost letter.
-- However it should be also showed the destination in the result but not. Guess the delivery address is wrong.

-- Using the to_address_id to get the type of address and which place the package ended up.
SELECT * FROM addresses
JOIN scans ON addresses.id = address_id
WHERE addresses.id = 854 AND package_id = 384;


-- *** The Devious Delivery ***
SELECT package_id, from_address_id, to_address_id, "action", contents FROM scans
JOIN packages ON packages.id = package_id
JOIN addresses ON addresses.id = address_id
WHERE from_address_id is NULL;

-- Got the base information, and next check the type of end up address
SELECT * FROM addresses
WHERE "address" = '7 Humboldt Place';

-- *** The Forgotten Gift ***
SELECT package_id, "address", from_address_id, to_address_id, "action", contents, driver_id FROM scans
JOIN packages ON packages.id = package_id
JOIN addresses ON addresses.id = address_id
WHERE "address" = '109 Tileston Street' AND "action" = 'Pick';

-- check whether the delivery address is correct
SELECT * FROM addresses WHERE id = 4983;

-- track the package
SELECT * FROM scans
JOIN drivers ON drivers.id = driver_id
WHERE package_id = 9523;
