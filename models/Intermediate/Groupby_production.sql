--faire un groupby  : année, pays, produits sur la table waste

SELECT
     CONCAT(year, '_', area_code, '_', item_code) as id,
     item,
     item_code,
     year,
     area_code,
     ROUND(AVG(value),2) as tons
 FROM {{ ref('stg_raw__Food_productions_full') }}
 GROUP BY item_code, year, area_code, item