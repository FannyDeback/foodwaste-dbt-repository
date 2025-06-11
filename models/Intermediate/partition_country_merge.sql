SELECT 
  country
  ,item
  ,SUM(tons) AS total_production
  ,SUM(loss_percentage) AS total_loss_percentage
  ,DENSE_RANK() OVER (PARTITION BY item ORDER BY SUM(tons) DESC) AS rank
FROM {{ ref('int_merge_fao') }}
GROUP BY 
  country
  ,item
ORDER BY 
  item
  ,rank