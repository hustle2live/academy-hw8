CREATE TABLE favourite_movies (
    user_id INTEGER NOT NULL,
    movie_id INTEGER,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES "user" (id),
    FOREIGN KEY (movie_id) REFERENCES movie (id)
);