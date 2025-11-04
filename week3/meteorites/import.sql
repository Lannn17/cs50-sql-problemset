.import --csv meteorites.csv temp

CREATE TABLE meteorites (
    "id" INTEGER,
    "name" TEXT,
    "class" TEXT,
    "mass" NUMERIC,
    "discovery" TEXT,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);

-- turn empty value into null
UPDATE temp SET
"mass" = NULLIF("mass", ''),
"year" = NULLIF("year", ''),
"lat" = NULLIF("lat", ''),
"long" = NULLIF("long", '');

INSERT INTO meteorites ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", ROUND("mass", 2) AS "mass", "discovery", "year", ROUND("lat", 2) AS "lat", ROUND("long", 2) AS "long"
FROM temp
WHERE "nametype" != 'Relict'
ORDER BY "year", "name";

DROP TABLE temp;
