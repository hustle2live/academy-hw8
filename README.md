# academy-hw8
BSA-2024 HomeWork-8

``` mermaid

---
title: My Database erDiagram
---
    erDiagram

    User {
        uuid id PK
        varchar(15) username
        varchar(15) firstName
        varchar(15) secondName
        varchar(100) email
        varchar(15) password
        uuid avatarId FK
        uuid favourites FK
        date createdAt
        date updatedAt
    }

    User |o--|| Avatar : Image
    User ||--|{ FavouriteMovies : Array

    Movie {
        uuid id PK
        varchar(100) title
        text(500) description
        money budget
        date releaseDate
        numeric duration
        varchar(100) country
        uuid posterId FK
        varchar(20) producer
        varchar(150) genres
        uuid[] characters FK
        date createdAt
        date updatedAt
    }

    Movie |o--|| Poster : id

    Person {
        uuid id PK
        varchar(15) firstName
        varchar(15) lastName
        text(700) biography
        date birthDate
        varchar(15) gender
        varchar(25) birthCountry
        uuid[] gallery FK
        date createdAt
        date updatedAt
    }

    Person ||--|| Gallery : id
    Person |o--|| Movie : movieId
    Character }|--o| Movie : character
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
        uuid role FK
        uuid[] films FK
        date createdAt
        date updatedAt
    }

    FavouriteMovies {
        uuid id PK
        uuid usersId FK
        uuid[] filmsList FK
    }

    FavouriteMovies |o--|{ Movie : details

    Avatar {
        uuid id PK
        uuid[] fileId FK
    }

    Poster {
        uuid id PK
        uuid[] fileId FK
    }

    File {
        uuid id PK
        varchar(50) filename
        varchar(50) mimeType
        varchar(50) key
        varchar(150) publicURL
    }

    File }|--|{ Gallery : ImageData
    File }|--|{ Poster : ImageData
    File }|--|{ Avatar : ImageData


```

