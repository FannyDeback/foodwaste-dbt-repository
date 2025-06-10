--faire un groupby  : année, pays, produits sur la table waste

SELECT
     commodity,
     year,
     country,
     ROUND(AVG(loss_percentage),2) as loss_percentage,
 FROM {{ ref('stg_raw__Food_Waste_table') }}
 GROUP BY commodity, year, country
