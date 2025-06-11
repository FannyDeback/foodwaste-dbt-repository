
SELECT 
  Area
  ,Item
  ,SUM(Value) AS Total_Production
  ,dense_RANK() OVER (PARTITION BY Item ORDER BY SUM(Value) DESC) AS rank
FROM {{ ref('stg_raw__Food_productions_full') }}
GROUP BY 
  Area
  ,Item
ORDER BY 
  Item
 ,rank