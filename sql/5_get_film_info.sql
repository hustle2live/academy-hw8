-- Отримати інформацію про фільми, що відповідають наступним критеріям
-- Належить до країни з ID 1
-- Випущені у 2022 році або пізніше
-- Тривалість більше 2 годин і 15 хвилин
-- Містить принаймні один з жанрів: Action або Drama.




SELECT m.id, m.title, m.release_date, m.duration, m.description, json_build_object('poster_id', m.poster_id) AS poster, json_build_object('ID', p.id, 'FirstName', p.first_name, 'LastName', p.last_name) AS director
FROM movie m
LEFT JOIN person p ON m.producer ILIKE concat('%', p.first_name ,'%')
WHERE
m.release_date >= '2019-01-01'
AND m.country_id = 1
AND m.duration >= 135
AND m.genres IN ('Action', 'Drama');


-- result (must be filled but don't have enought data in tables)

--  id | title | release_date | duration | description | poster | director
-- ----+-------+--------------+----------+-------------+--------+----------