WITH ratings AS (
    SELECT DISTINCT user_id FROM {{ ref('src_ratings') }}

),

tag AS (
    SELECT DISTINCT user_id FROM {{ ref('src_tags') }}

)

SELECT DISTINCT user_id
FROM (
    SELECT * FROM ratings
    UNION 
    SELECT * FROM tag
)

