WITH src_movie AS (
    SELECT * FROM {{ ref('src_movie') }}

)

SELECT 
    movie_id,
    INITCAP(TRIM(title)) AS movie_title, 
    SPLIT(genres, '|') AS genre_array,
    genres
FROM src_movie
