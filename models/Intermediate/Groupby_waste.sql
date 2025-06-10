--faire un groupby  : année, pays, produits sur la table waste

SELECT
     CONCAT(year,'_',area_code,'_', item_code) as id,
     item_code,
     commodity,
     year,
     area_code,
     country,
     ROUND(AVG(loss_percentage),2) as loss_percentage
 FROM {{ ref('stg_raw__Food_Waste_table') }}
 GROUP BY item_code, year, country, area_code, commodity
