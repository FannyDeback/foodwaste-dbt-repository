--faire un groupby  : année, pays, produits sur la table waste

SELECT
     CONCAT(year, '_', area, '_', item) as id,
     item as commodity,
     year,
     area as country,
     ROUND(AVG(value),2) as tons
 FROM {{ ref('stg_raw__Food_productions_full') }}
 GROUP BY item, year, area