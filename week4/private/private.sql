CREATE TABLE code (
    id INTEGER,
    cha INTEGER,
    "length" INTEGER,
    phrase TEXT,
    PRIMARY KEY(id)
);

INSERT INTO code (id, cha, "length") VALUES
(14, 98, 4),
(114, 3, 5),
(618, 72, 9),
(630, 7, 3),
(932, 12, 5),
(2230, 50, 7),
(2346, 44, 10),
(3041, 14, 5);

UPDATE code
SET phrase = (
    SELECT substr(sentence, cha, "length")
    FROM sentences WHERE code.id = sentences.id
    );

CREATE VIEW message AS
SELECT phrase FROM code;
