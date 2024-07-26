CREATE TYPE movie_role AS ENUM ('leading', 'supporting', 'background');

CREATE TABLE character (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    description VARCHAR(150),
    role movie_role,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movie (id),
    person_id INTEGER,
    FOREIGN KEY (person_id) REFERENCES person (id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);