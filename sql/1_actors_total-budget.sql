-- Вибрати список акторів разом із загальним бюджетом фільмів, в яких вони з’явилися
-- Shape
-- ID
-- First name
-- Last name
-- Total movies budget


-- fill up addition table "movie_actors" - with actors and movies they haveve taken place

INSERT INTO movie_actors (movie_id, person_id) VALUES (1, 1), (1, 3), (1, 5), (1, 7), (1, 9), (2, 3), (2, 4), (2, 8), (2, 12), (2, 10), (3, 4), (3, 11), (3, 10), (3, 6), (3, 8), (4, 12), (4, 2), (4, 3), (4, 6), (4, 7), (5, 11), (5, 5), (5, 6), (5, 3), (5, 7), (6, 1), (6, 9), (6, 8), (6, 2), (6, 3);

INSERT INTO movie_actors (movie_id, person_id) VALUES (1, 13), (2, 13), (3, 13), (4, 13), (5, 13), (6, 13);


-- select actors and total budget

SELECT p.id, p.first_name, p.last_name, SUM(m.budget) AS total_movies_budget
FROM person p
LEFT JOIN movie_actors ma ON ma.person_id = p.id
LEFT JOIN movie m ON ma.movie_id = m.id
GROUP BY p.id, p.first_name, p.last_name;


-- result

--  id | first_name | last_name | total_movies_budget
-- ----+------------+-----------+---------------------
--   5 | Larry      | Kelly     |     72 544 600,00
--   4 | Christian  | Dawkin    |     79 687 000,00
--  10 | Garry      | Jherck    |     79 687 000,00
--   6 | Ben        | Loreno    |     44 888 100,00
--  13 | Victor     | Derek     |    192 776 300,00
-- ...
