-- Отримати список усіх користувачів разом із їхніми улюбленими фільмами у вигляді масиву ідентифікаторів
-- Shape: -- ID -- Username -- Favorite movie IDs


-- add some additianal users manually

INSERT INTO "user" (first_name, second_name, email, password, username) VALUES 
('Scott', 'Dudkis', '2233@gmail.com', 'ffsFASdd', 'bzcroc'),
('Charlie', 'Horen', 'fasc@gmail.com', 'fsSlkOJO', 'africa54'),
('Loren', 'Loss', 'dloksa@gmail.com', 'fs)(&^T&s', 'Lucy555'),
('Hornie', 'Noise', 'aaaeew@gmail.com', 'lkSKFoSAs', 'Humbie'),
('Rebecca', 'Garrold', '44sffw@gmail.com', 'AAaddseEE', 'Regal23');


-- add some additional data about users and favourite movies

INSERT INTO favourite_movies (user_id, movie_id) VALUES (1,1), (1,3), (1,7), (2,2), (2,1), (2,5), (5,10), (5,5), (5,8), (7,2), (7,10);


-- select and group users and favourites ids

SELECT u.id, u.username, ARRAY(SELECT fm.movie_id FROM favourite_movies fm WHERE fm.user_id = u.id)::integer[] AS favorites_ids
FROM "user" u
LEFT JOIN favourite_movies fm ON fm.user_Id = u.id
GROUP BY u.id, u.username, favorites_ids;


-- result

--  id | username  | favorites_ids
-- ----+-----------+---------------
--   1 | homie33   | {1,3,7}
--   2 | lloudness | {2,1,5}
--   3 | beTrent   | {}
--   4 | bzcroc    | {}
--   5 | africa54  | {10,5,8}
--   6 | Lucy555   | {}
--   7 | Humbie    | {2,10}
--   8 | Regal23   | {}