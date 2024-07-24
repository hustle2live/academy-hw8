# academy-hw8
BSA-2024 HomeWork-8

``` mermaid
        graph LR;
            A-->B;
            A-->C;
            B-->D;
            C-->D;
```

You can also use ::: blocks:



``` mermaid
    flowchart TD
        A-->B;
        A-->C;
        B-->D;
        C-->D;
```

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
        text avatarId
        date createdAt
        date updatedAt
    }

    Movie {
        uuid id PK
        text(100) title
        text(500) description
        money budget
        date releaseDate
        numeric duration
        text country
        uuid posterId FK
        varchar(20) producer
        uuid[] genres FK
        uuid[] characters FK
        date createdAt
        date updatedAt
    }

    Person {
        uuid id PK
        varchar(15) firstName
        varchar(15) lastName
        text(700) biography
        date birthDate
        varchar(15) gender
        varchar(25) birthCountry
        text pictures
        date createdAt
        date updatedAt
    }

```

``` mermaid
    erDiagram

    Character {
        uuid id PK
        varchar(20) name
        varchar(150) description
        uuid role FK
        date createdAt
        date updatedAt
    }

    FavouriteMovies {
        uuid id PK
        uuid usersId FK
        uuid[] filmsList FK
        date createdAt
        date updatedAt
    }
```

``` mermaid
    erDiagram

    Avatar {
        uuid id PK
        string carRegistrationNumber
        string driverLicence
        date createdAt
        date updatedAt
    }

    Poster {
        uuid id PK
        text imgPath
        date createdAt
        date updatedAt
    }
```


---
 CLASS Diagram Example
---

``` mermaid
    classDiagram
    note "From Duck till Zebra"
    Animal <|-- Duck
    note for Duck "can fly\ncan swim\ncan dive\ncan help in debugging"
    Animal <|-- Fish
    Animal <|-- Zebra
    Animal : +int age
    Animal : +String gender
    Animal: +isMammal()
    Animal: +mate()
    class Duck{
        +String beakColor
        +swim()
        +quack()
    }
    class Fish{
        -int sizeInFeet
        -canEat()
    }
    class Zebra{
        +bool is_wild
        +run()
    }
```
