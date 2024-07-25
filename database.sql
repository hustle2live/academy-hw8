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

create TABLE Character(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    description VARCHAR(150),
    role VARCHAR(20),
    movies INTEGER [],
    FOREIGN KEY (movies) REFERENCES Movie (id),
    createdAt DATE,
    updatedAt DATE
);

create TABLE FavouriteMovies(
    id SERIAL PRIMARY KEY,
    usersId INTEGER,
    filmsList INTEGER [],
    FOREIGN KEY (usersId) REFERENCES User (id),
    FOREIGN KEY (filmsList) REFERENCES Movie (id),
);

create TABLE File(
    id SERIAL PRIMARY KEY,
    filename VARCHAR(50),
    mimeType VARCHAR(50),
    key VARCHAR(50),
    publicURL VARCHAR(150)
);

create TABLE Avatar(
    id SERIAL PRIMARY KEY,
    fileId INTEGER,
    FOREIGN KEY (fileId) REFERENCES File (id),
    userId INTEGER,
    FOREIGN KEY (userId) REFERENCES User (id),
);

create TABLE Poster(
    id SERIAL PRIMARY KEY,
    fileId INTEGER,
    FOREIGN KEY (fileId) REFERENCES File (id),
    movieId INTEGER,
    FOREIGN KEY (movieId) REFERENCES Movie (id),
);

create TABLE Gallery(
    id SERIAL PRIMARY KEY,
    personId INTEGER,
    FOREIGN KEY (personId) REFERENCES Person (id),
    filesId INTEGER [],
    FOREIGN KEY (filesId) REFERENCES File (id)
);