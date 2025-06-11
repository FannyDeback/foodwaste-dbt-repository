SELECT
  year_prod 
  ,country
  ,item
  ,SUM(loss_percentage) AS total_loss_percentage
  ,SUM(tons) AS Total_Production
  ,DENSE_RANK() OVER (PARTITION BY item ORDER BY SUM(loss_percentage) DESC) AS rank
FROM {{ ref('int_merge_fao') }}
GROUP BY 
  year_prod
  ,country
  ,item
ORDER BY 
  item
  ,rank
  ,year_prod