CREATE TABLE gallery (
    person_id INTEGER NOT NULL,
    file_id INTEGER,
    PRIMARY KEY (person_id, file_id),
    FOREIGN KEY (person_id) REFERENCES person (id),
    FOREIGN KEY (file_id) REFERENCES file (id)
);