-- Вибрати режисерів разом із середнім бюджетом фільмів, які вони зняли
-- Shape: -- Director ID -- Director name (concatenation of first and last names) -- Average budget

-- add some direktors to persons

 INSERT INTO person (first_name, last_name, birth_date, country_id, gender) VALUES
 ('Haris', 'Peterson', '1999-11-08', 1, 'male'),
 ('Marlon', 'Baker', '1974-01-11', 1, 'male');

--  select directors with budgets

SELECT p.id, concat(p.first_name, ' ', p.last_name) AS director_name, AVG(CAST(m.budget AS NUMERIC)) AS avg_budget
FROM person p
RIGHT JOIN movie m ON m.producer ILIKE concat('%', p.first_name, ' ', p.last_name, '%')
GROUP BY p.id, director_name;

-- result

--  id | director_name  |      avg_budget
-- ----+----------------+-----------------------
--   1 | William Worth  | 72701200.000000000000
--   3 | James White    | 84962400.000000000000
--  14 | Haris Peterson | 52272350.000000000000
--  15 | Marlon Baker   | 18554933.333333333333
