--faire un groupby  : année, pays, produits sur la table waste

SELECT
     product,
     date_date,
     pays
     --ROUND(SUM(revenue),2) as revenue,
     --ROUND(SUM(quantity),2) as quantity,
     --ROUND(SUM(purchase_cost),2) as purchase_cost,
     --ROUND(SUM(margin),2) as margin
 FROM {{ ref('stg_raw__Food_Waste_table') }}
 GROUP BY product, date_date
 ORDER BY product DESC
