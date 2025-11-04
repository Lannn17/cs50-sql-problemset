CREATE TABLE users(
    id INT AUTO_INCREMENT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    username VARCHAR(20),
    `password` VARCHAR(128),
    PRIMARY KEY(id)
);

CREATE TABLE schools(
    id INT AUTO_INCREMENT,
    `name` VARCHAR(100),
    `type` VARCHAR(20),
    `location` VARCHAR(30),
    founded_time CHAR(4),
    PRIMARY KEY(id)
);

CREATE TABLE companies(
    id INT AUTO_INCREMENT,
    `name` VARCHAR(100),
    industry VARCHAR(20),
    `location` VARCHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE peoples(
    id INT AUTO_INCREMENT,
    user1_id INT,
    user2_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY(user1_id) REFERENCES users(id),
    FOREIGN KEY(user2_id) REFERENCES users(id)
);

CREATE TABLE alumi(
    id INT AUTO_INCREMENT,
    user_id INT,
    school_id INT,
    `start_date` DATE,
    `end_date` DATE,
    degree VARCHAR(20),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(school_id) REFERENCES schools(id)
);

CREATE TABLE employees(
    id INT AUTO_INCREMENT,
    user_id INT,
    company_id INT,
    "start_date" DATE,
    "end_date" DATE,
    title VARCHAR(20),
    PRIMARY KEY(id),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(company_id) REFERENCES companies(id)
);
