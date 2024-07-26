# academy-hw8
BSA-2024 HomeWork-8

``` mermaid

---
title: My Database erDiagram
---
    erDiagram

    User {
        uuid id PK
        varchar(20) username
        varchar(20) firstName
        varchar(20) secondName
        varchar(100) email
        varchar(20) password
        uuid avatarId FK
        uuid favourites FK
        date createdAt
        date updatedAt
    }

    User ||--o| Avatar : image
    User ||--o| FavouriteMovies : array

    Movie {
        uuid id PK
        varchar(100) title
        text(500) description
        money budget
        date releaseDate
        numeric duration
        varchar(100) country
        uuid posterId FK
        varchar(50) producer
        varchar(150) genres
        uuid[] characters FK
        date createdAt
        date updatedAt
    }

    Movie ||--o| File : poster

    Person {
        uuid id PK
        varchar(20) firstName
        varchar(20) lastName
        text(700) biography
        date birthDate
        varchar(20) gender
        varchar(50) birthCountry
        uuid[] gallery FK
        date createdAt
        date updatedAt
    }

    Person ||--o| Gallery : photos
    Person }|--|{ Movie : movieId
    Character }|--|{ Movie : character
    Character }|--o{ Person : data

    Gallery {
        uuid id PK
        uuid personId FK
        uuid[] filesId FK
    }

    Character {
        uuid id PK
        varchar(20) name
        varchar(150) description
        varchar(20) role FK
        uuid[] movies FK
        date createdAt
        date updatedAt
    }

    FavouriteMovies {
        uuid id PK
        uuid usersId FK
        uuid[] filmsList FK
    }

    FavouriteMovies ||--o{ Movie : setOfFilms

    Avatar {
        uuid id PK
        uuid[] fileId FK
        uuid userId FK
    }

    Poster {
        uuid id PK
        uuid[] fileId FK
        uuid movieId FK
    }

    File {
        uuid id PK
        varchar(50) filename
        varchar(50) mimeType
        varchar(50) key
        varchar(150) publicURL
    }

    Gallery ||--o{ File : imageData
    Poster ||--o| File : imageData
    Avatar ||--o| File : imageData


```

