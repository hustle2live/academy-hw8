-- Вибрати фільми, випущені за останні 5 років, з кількістю акторів, які з’явилися в кожному фільмі
-- Shape: -- ID -- Title -- Actors count


-- add some movies manually

INSERT INTO movie (title, description, budget, release_date, duration, country_id, producer) VALUES 
   ('Godzilla x Kong',  'Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered',
   112201200, '2021-02-04 00:00:01.000000', 141, 1, 'William Worth'),
   ('My Spy The Eternal City',  'of toxic waste causes an underground cave dweller to mutate into a hideous monster. A construction ',
   140200200, '2023-12-11 00:00:01.000000', 141, 1, 'James White'),
   ('Under Paris',  'Forty years after his unforgettable first case in Beverly Hills, Detroit cop Axel Foley',
   82201200, '2024-09-04 00:00:01.000000', 141, 1, 'Haris Peterson'),
   ('Black Noise',  'After their car breaks down in an eerie small town, a young couple are forced to spend the night',
   33120200, '2016-02-10 00:00:01.000000', 141, 1, 'Marlon Baker');


-- select shape data

SELECT m.id, m.title, COUNT(ma.person_id) AS actors_count
FROM movie m
LEFT JOIN movie_actors ma ON ma.movie_id = m.id
GROUP BY m.id, m.title;


-- result

--  id |          title          | actors_count
-- ----+-------------------------+--------------
--   4 | Wolverine               |            6
--  10 | Black Noise             |            0
--   6 | Justice League: Crisis  |            6
--   2 | Inside Out 2            |            6
--   7 | Godzilla x Kong         |            0
--   9 | Under Paris             |            0
--   3 | Despicable Me 4         |            6
--   1 | Bad Boys: Ride or Die   |            6
--   5 | The Garfield Movie      |            6
--   8 | My Spy The Eternal City |            0