CREATE TABLE avatar (
    user_id INTEGER NOT NULL,
    file_id INTEGER,
    PRIMARY KEY (user_id, file_id),
    FOREIGN KEY (user_Id) REFERENCES "user" (id),
    FOREIGN KEY (file_Id) REFERENCES file (id)
);