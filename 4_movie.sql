CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    description VARCHAR(500),
    budget MONEY,
    release_date DATE,
    duration NUMERIC,
    country VARCHAR,
    FOREIGN KEY (country) REFERENCES countries (code),
    poster_id INTEGER,
    FOREIGN KEY (poster_id) REFERENCES file (id),
    producer VARCHAR(50),
    genres VARCHAR(150),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);