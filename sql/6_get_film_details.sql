-- Вибрати детальну інформацію про фільм з ID 1 
-- array_agg
SELECT
    m.id,
    m.title,
    m.release_date,
    m.duration,
    m.description,
    json_agg(
        json_build_object(
            'id', m.poster_id,
            'url', f.public_url,
            'name', f.filename
        )
    ) AS poster,
    json_agg(
        json_build_object(
            'id', p.id,
            'firstname', p.first_name,
            'lastname', p.last_name,
            'photo', json_build_object(
                'photo_id', p.picture,
                'name', fp.filename,
                'photo_url', fp.public_url
            )
        )
    ) AS director,
    array_agg(
      ( SELECT json_agg(
        json_build_object(
        'id', a.id,
        'firstName', a.first_name,
        'lastName', a.last_name,
        'photo', json_build_object(
            'name', ph.filename,
            'url', ph.public_url
            )
        )
    ) AS actors 
    FROM movie_actors ma
    JOIN person a ON ma.person_id = a.id
    LEFT JOIN file ph ON a.picture = ph.id
    WHERE ma.movie_id = m.id
    )) AS actors 
FROM
    movie m
    LEFT JOIN file f ON m.poster_id = f.id
    LEFT JOIN person p ON m.producer ILIKE concat('%', p.first_name, '%')
    LEFT JOIN file fp ON p.picture = fp.id
WHERE
    m.id = 1
GROUP BY
    m.id, p.id;

