CREATE TYPE movie_role AS ENUM ('leading', 'supporting', 'background');

CREATE TABLE character (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    description VARCHAR(150),
    role movie_role NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movie (id),
    person_id INTEGER,
    FOREIGN KEY (person_id) REFERENCES person (id),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);