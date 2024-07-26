CREATE TABLE file (
    id SERIAL PRIMARY KEY,
    filename VARCHAR(50) NOT NULL,
    mime_type VARCHAR(50),
    key VARCHAR(50),
    public_url VARCHAR(150) NOT NULL,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);