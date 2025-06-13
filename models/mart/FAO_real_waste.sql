{{ config(materialized='table') }}

WITH sub AS (
SELECT
    region_name,
    sub_region_name,
    area AS country,
    item,
    year,
    value,
    loss_percentage,
    ROUND(value * loss_percentage/100,2) AS loss_value,
    co2_id

FROM {{ ref('merge_prod_waste') }}

)

SELECT
    s.*,
    e.total_emissions,
    e.food_product AS item_group,
    e.category AS food_group,
    e.animal_vegetal AS origin_type
FROM sub AS s
INNER JOIN {{ ref('stg_raw__CO2_emissions') }} AS e
    ON s.co2_id = e.co2_cat_id
