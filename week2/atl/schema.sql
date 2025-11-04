CREATE TABLE passengers(
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    age INTEGER,
    PRIMARY KEY(id)
);

CREATE TABLE check_ins(
    id INTEGER,
    passenger_id INTEGER,
    "datetime" TEXT NOT NULL DEFAULT (strftime('%Y%m%d %H:%M', 'now')),
    flight_id INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(flight_id) REFERENCES flights(id),
    FOREIGN KEY(passenger_id) REFERENCES passengers(id)
);

CREATE TABLE airlines(
    id INTEGER,
    "name" TEXT,
    concourse NOT NULL CHECK(concourse IN ('A', 'B', 'C', 'D', 'E', 'F', 'T')),
    PRIMARY KEY(id)
);

CREATE TABLE flights(
    id INTEGER,
    "number" TEXT,
    airline_id INTEGER,
    depart_airport TEXT,
    head_airport TEXT,
    departure_datetime TEXT NOT NULL DEFAULT (strftime('%Y%m%d %H:%M', 'now')),
    arrival_datetime TEXT NOT NULL DEFAULT (strftime('%Y%m%d %H:%M', 'now')),
    PRIMARY KEY(id),
    FOREIGN KEY(airline_id) REFERENCES airlines(id)
)
