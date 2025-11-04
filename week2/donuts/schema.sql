CREATE TABLE ingredients(
    id INTEGER,
    "name" TEXT,
    unit TEXT,
    price NUMERIC,
    PRIMARY KEY(id)
);

CREATE TABLE donuts(
    id INTEGER,
    "name" TEXT,
    gluten_free TEXT NOT NULL CHECK (gluten_free IN ('YES', 'NO')),
    price NUMERIC,
    PRIMARY KEY(id)
);

CREATE TABLE donuts_ingredients(
    donut_id INTEGER,
    ingredient_id INTEGER,
    PRIMARY KEY(donut_id, ingredient_id),
    FOREIGN KEY(donut_id) REFERENCES donuts(id),
    FOREIGN KEY(ingredient_id) REFERENCES ingredients(id)
);

CREATE TABLE orders(
    id INTEGER,
    customer_id INTEGER,
    PRIMARY KEY(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE customers(
    id INTEGER,
    first_name TEXT,
    last_name TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE order_items(
    order_id INTEGER,
    donut_id INTEGER,
    "number" INTEGER,
    PRIMARY KEY(order_id, donut_id),
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(donut_id) REFERENCES donuts(id)
);

CREATE TABLE order_history(
    order_id INTEGER,
    customer_id INTEGER,
    PRIMARY KEY(order_id, customer_id),
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);
