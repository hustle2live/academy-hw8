CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(20),
    first_name VARCHAR(20),
    second_name VARCHAR(20),
    email VARCHAR(100),
    password VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);