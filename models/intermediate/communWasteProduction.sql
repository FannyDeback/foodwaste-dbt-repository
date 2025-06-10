SELECT 
DISTINCT item
FROM  {{ref('stg_raw__Food_productions') }}
WHERE item IN (SELECT commodity FROM {{ ref('stg_raw__Food_Waste_table')}})
ORDER BY item

SELECT 
DISTINCT item
FROM  {{ref('stg_raw__Food_productions') }}
ORDER BY item