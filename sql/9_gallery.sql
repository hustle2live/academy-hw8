CREATE TABLE gallery (
    person_id INTEGER,
    file_id INTEGER,
    PRIMARY KEY (person_id, file_id),
    FOREIGN KEY (person_id) REFERENCES person (id),
    FOREIGN KEY (file_id) REFERENCES file (id)
);