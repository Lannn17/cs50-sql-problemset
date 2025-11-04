CREATE TABLE users(
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    username TEXT,
    "password" TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE schools(
    id INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    founded_time TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE companies(
    id INTEGER,
    "name" TEXT,
    industry TEXT,
    "location" TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE peoples(
    id INTEGER,
    user1_id INTEGER,
    user2_id INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(user1_id) REFERENCES users(id),
    FOREIGN KEY(user2_id) REFERENCES users(id)
);

CREATE TABLE alumi(
    id INTEGER,
    user_id INTEGER,
    school_id INTEGER,
    "start_date" DATETIME,
    "end_date" DATETIME,
    degree TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(school_id) REFERENCES schools(id)
);

CREATE TABLE employees(
    id INTEGER,
    user_id INTEGER,
    company_id INTEGER,
    "start_date" DATETIME,
    "end_date" DATETIME,
    title TEXT,
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(company_id) REFERENCES companies(id)
);
