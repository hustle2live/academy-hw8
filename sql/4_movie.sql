CREATE TABLE movie (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(500),
    budget MONEY,
    release_date DATE,
    duration NUMERIC,
    country VARCHAR,
    FOREIGN KEY (country) REFERENCES countries (code),
    poster_id INTEGER,
    FOREIGN KEY (poster_id) REFERENCES file (id),
    producer VARCHAR(50) NOT NULL,
    genres VARCHAR(150),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);