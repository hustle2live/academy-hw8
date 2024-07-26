-- Вибрати фільми, випущені за останні 5 років, з кількістю акторів, які з’явилися в кожному фільмі
-- Shape: -- ID -- Title -- Actors count


-- add a few movies manually

INSERT INTO movie (title, description, budget, release_date, duration, country_id, producer) VALUES 
   ('Godzilla x Kong',  'Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered',
   112201200, '2021-02-04 00:00:01.000000', 141, 1, 'William Worth'),
   ('My Spy The Eternal City',  'of toxic waste causes an underground cave dweller to mutate into a hideous monster. A construction ',
   140200200, '2023-12-11 00:00:01.000000', 141, 1, 'James White'),
   ('Under Paris',  'Forty years after his unforgettable first case in Beverly Hills, Detroit cop Axel Foley',
   82201200, '2024-09-04 00:00:01.000000', 141, 1, 'Haris Peterson'),
   ('Black Noise',  'After their car breaks down in an eerie small town, a young couple are forced to spend the night',
   33120200, '2016-02-10 00:00:01.000000', 141, 1, 'Marlon Baker');


-- add some data to movie_actors table

INSERT INTO movie_actors (movie_id, person_id) VALUES 
    (7, 4), (7, 8), (7, 13), (7, 3), (7, 12), 
    (9, 2), (9, 9), (9, 4), (9, 3), (9, 1), 
    (8, 7), (8, 8), (8, 5), (8, 6), (8, 11);

-- select shape data

SELECT m.id, m.title, COUNT(ma.person_id) AS actors_count
FROM movie m
LEFT JOIN movie_actors ma ON ma.movie_id = m.id
WHERE m.release_date >= '2019-01-01'
GROUP BY m.id, m.title;


-- result

--  id |          title          | actors_count
-- ----+-------------------------+--------------
--   9 | Under Paris             |            5
--   7 | Godzilla x Kong         |            5
--   8 | My Spy The Eternal City |            5
