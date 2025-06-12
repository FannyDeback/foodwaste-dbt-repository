--SELECT count(*) FROM {{ ref('stg_raw__new_waste_table') }} WHERE row
SELECT 
SUM(CASE WHEN year IS NULL THEN 1 ELSE 0 END) as year_null,
SUM(CASE WHEN loss_percentage IS NULL THEN 1 ELSE 0 END) as loss_null,
SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) as country_null,
SUM(CASE WHEN cpc_code IS NULL THEN 1 ELSE 0 END) as cpc_null,
SUM(CASE WHEN commodity IS NULL THEN 1 ELSE 0 END) as commodity_null,
SUM(CASE WHEN activity IS NULL THEN 1 ELSE 0 END) as activity_null,
SUM(CASE WHEN food_supply_stage IS NULL THEN 1 ELSE 0 END) as food_supply_stage_null,
SUM(CASE WHEN cause_of_loss IS NULL THEN 1 ELSE 0 END) as cause_of_loss_null
FROM {{ ref('stg_raw__new_waste_table') }} 

