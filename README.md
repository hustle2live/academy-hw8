# academy-hw8
BSA-2024 HomeWork-8

``` mermaid

---
title: My Database erDiagram
---
    erDiagram

    user {
        uuid id PK
        varchar(20) username
        varchar(20) first_name
        varchar(20) second_name
        varchar(100) email
        varchar(20) password
        date created_at
        date updated_at
    }

    movie {
        uuid id PK
        varchar(100) title
        text(500) description
        money budget
        date release_date
        numeric duration
        uuid country_id FK
        uuid poster_id FK
        varchar(50) producer
        varchar(150) genres
        date created_at
        date updated_at
    }


    person {
        uuid id PK
        varchar(20) first_name
        varchar(20) last_name
        text biography
        date birth_date
        enum gender
        uuid country_id FK
        uuid picture FK
        date created_at
        date updated_at
    }

    person ||--o| gallery : photos
    person }|--|{ movie : movieId
    character }|--|{ movie : movieId
    character }|--o{ person : isPerson

    gallery {
        uuid person_id FK
        uuid file_id FK
    }

    character {
        uuid id PK
        varchar(20) name
        varchar(150) description
        enum role
        uuid movie_id FK
        uuid person_id FK
        date created_at
        date updated_at
    }

    avatar {
        uuid user_id FK
        uuid file_id FK
    }

    countries {
        uuid id PK
        numeric code FK
        varchar name FK
    }

    file {
        uuid id PK
        varchar(50) filename
        varchar(50) mime_type
        varchar(50) key
        varchar(150) public_url
        date created_at
        date updated_at
    }

    gallery ||--o{ file : images
    avatar ||--o| file : picture
    movie ||--o| file : poster


    movie ||--|| countries : from
    person ||--|| countries : from


```

``` mermaid
---
title: additional tables
---
    erDiagram
    movie_actors {
        uuid person_id FK
        uuid movie_id FK
    }

    movie_characters {
        uuid character_id FK
        uuid movie_id FK
    }

    favourite_movies {
        uuid user_id FK
        uuid movie_id FK
    }

```