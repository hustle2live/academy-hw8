const { Client } = require('pg');

const data = require('./assets/country-code.json');

try {
   const client = new Client({
      user: 'postgres',
      password: 'postgre',
      host: 'localhost',
      port: 5432,
      database: 'movies'
   });

   client.connect();

   const query = `INSERT INTO countries (code, name) VALUES ($1, $2)`;

   const values = data.map(({ numeric, englishShortName }) => [numeric, englishShortName]);

   function fillCountriesTable() {
      values.forEach((value) =>
         client.query(query, value, (err, res) => {
            if (err) {
               console.error(err);
               return;
            }

            console.log('Data inserted successfully');
         })
      );
      //   client.end();
   }

   fillCountriesTable();
} catch (error) {
   console.log(error);
}

const pasteMovie = `
INSERT INTO movie (title,
description,
budget,
release_date,
duration,
country_id,
producer) VALUES ('Justice League: Crisis',
'ne, these worlds and all their inhabitants a.',
33201200,
'1998-02-04 00:00:01.000000',
141,
1,
'William Worth'
);`;

const pastePerson = `
INSERT INTO person (first_name, last_name, birth_date, country_id, gender) VALUES ('Harrie', 'Born', '1999-11-08', 1, 'male'),
 ('Martin', 'Luter', '1974-01-11', 1, 'male'),
 ('Barn', 'Lanier', '1963-11-08', 13, 'male'),
 ('Garry', 'Jherck', '1981-11-10', 13, 'male'),
 ('Kiley', 'Lokas', '1982-09-06', 1, 'female'),
 ('Kily', 'Rodney', '1963-02-04', 34, 'male'),
 ('Victor', 'Derek', '1954-01-10', 1, 'male');
`;

const pasteUser = `
INSERT INTO "user" (
first_name,
second_name,
email,
password,
username) VALUES (
'Barret',
'Trent',
'bbfo@gmail.com',
'fs&^56%9(fs',
'beTrent');
`;

const characters = `
INSERT INTO character (name, description, role, movie_id, person_id) VALUES 
    ('Luke Skywalker', 'A farm boy from Tatooine who becomes a Jedi', 'leading', 4, 1),
    ('Princess Leia Organa', 'Senator and Princess of Alderaan, leader of the Rebel Alliance', 'leading', 4, 2),
    ('Darth Vader', 'A powerful Sith Lord, Luke Skywalkers father', 'supporting', 4, 3),
    ('Han Solo', 'A smuggler who becomes a rebel', 'supporting', 4, 4),
    ('Chewbacca', 'Wookiee warrior and Han Solos co-pilot', 'background', 4, 5),
    ('Obi-Wan Kenobi', 'A Jedi Master who trains Luke Skywalker', 'background', 4, 6),
    ('R2-D2', 'Astromech droid and friend of Luke Skywalker', 'supporting', 4, 7),
    ('C-3PO', 'Protocol droid and friend of R2-D2', 'supporting', 4, 8),
    ('Yoda', 'A wise Jedi Master', 'supporting', 5, 9),
    ('Padmé Amidala', 'Queen of Naboo and mother of Luke and Leia', 'leading', 1, 10);
    `;
