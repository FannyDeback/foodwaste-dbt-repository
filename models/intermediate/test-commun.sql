SELECT 
DISTINCT Food_product, 
total_emissions,
FROM {{ ref('stg_raw__CO2_emissions')}}
WHERE Food_product IN (SELECT Item FROM {{ ref('stg_raw__Food_productions')}})
ORDER BY Food_product

SELECT 
Food_product, 
total_emissions,
category
FROM {{ ref('stg_raw__CO2_emissions')}}
ORDER BY total_emissions DESC

SELECT 
DISTINCT area
FROM {{ ref('stg_raw__Food_productions') }}

SELECT 
DISTINCT commodity
FROM  {{ ref('stg_raw__Food_Waste_table') }}
WHERE commodity NOT IN (SELECT item FROM {{ ref('stg_raw__Food_productions')}})
ORDER BY commodity

--97commun

SELECT 
DISTINCT commodity
FROM  {{ ref('stg_raw__Food_Waste_table') }}


SELECT distinct f.area, w.country
FROM {{ ref('stg_raw__Food_productions_full') }} f 
FULL OUTER JOIN {{ ref('stg_raw__Food_Waste_table')}} w 
ON LOWER(f.area) = LOWER(w.country )
ORDER BY f.area

