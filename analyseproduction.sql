SELECT 
area,
COUNT (DISTINCT year) as nb_year
FROM {{ ref('stg_raw__Food_productions_full') }}
WHERE area IS NOT NULL 
GROUP BY area
ORDER BY area