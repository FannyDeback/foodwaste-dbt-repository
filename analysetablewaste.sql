SELECT 
year,
country,
ROUND(AVG(loss_percentage)) as loss_percentage,
COUNT(year)
FROM {{ ref('stg_raw__Food_Waste_table') }}
GROUP BY year,country

SELECT 
country,
FROM {{ ref('stg_raw__Food_Waste_table') }}
GROUP BY country

-- Enlever les continents et les sous-régions puisqu'on les remets après. 
-- Enlever la country null

SELECT 
COUNT (*)
FROM {{ ref('stg_raw__Food_Waste_table') }}
WHERE country IS NULL

-- 25083 null / 50499 lignes totales

SELECT 
COUNT (*)
FROM {{ ref('stg_raw__Food_Waste_table') }}
WHERE country IS NOT NULL

-- 25416 not null

SELECT 
country,
COUNT (DISTINCT year) as nb_year
FROM {{ ref('stg_raw__Food_Waste_table') }}
WHERE country IS NOT NULL 
GROUP BY country
ORDER BY nb_year DESC

-- Se limiter à 2013 à 2023

SELECT 
country,
COUNT (DISTINCT year) as nb_year,
loss_percentage
FROM {{ ref('stg_raw__Food_Waste_table') }}
WHERE country = 'Benin'
GROUP BY country

SELECT 
country,commodity,year,
AVG(loss_percentage)
FROM `food-waste-project-2006.foodwaste.New_Waste` 
WHERE country = 'Benin' 
GROUP BY country,commodity,year
ORDER BY commodity

-- Des années pour le rice item de 2014 - 2021
-- Pour Tomatoes une seule année en 2015
-- Il faudra aussi trancher sur les produits qu'on prend. 