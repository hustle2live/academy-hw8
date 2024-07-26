CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    biography VARCHAR(700),
    birth_date DATE,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie (id),
    gender VARCHAR(20),
    country VARCHAR,
    FOREIGN KEY (country) REFERENCES countries (code),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);