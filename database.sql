create TABLE User(
    id SERIAL PRIMARY KEY,
    username VARCHAR(20),
    firstName VARCHAR(20),
    secondName VARCHAR(20),
    email VARCHAR(100),
    password VARCHAR(20),
    avatarId INTEGER FK,
    favourites INTEGER [],
    FOREIGN KEY (favourites) REFERENCES FavouriteMovies (id),
    createdAt DATE,
    updatedAt DATE
);

create TABLE Movie(
    id SERIAL PRIMARY KEY,
    description VARCHAR(500),
    budget MONEY,
    releaseDate DATE,
    duration numeric,
    country VARCHAR(100),
    posterId INTEGER,
    FOREIGN KEY (posterId) REFERENCES Poster (id),
    producer VARCHAR(50),
    genres VARCHAR(150),
    characters INTEGER [],
    FOREIGN KEY (characters) REFERENCES Character (id),
    createdAt DATE,
    updatedAt DATE
);

create TABLE Person(
    id SERIAL PRIMARY KEY,
    firstName VARCHAR(20),
    lastName VARCHAR(20),
    biography text(700),
    birthDate DATE,
    gender VARCHAR(20),
    birthCountry VARCHAR(50),
    gallery INTEGER [],
    FOREIGN KEY (gallery) REFERENCES Gallery (id),
    createdAt DATE,
    updatedAt DATE
);


