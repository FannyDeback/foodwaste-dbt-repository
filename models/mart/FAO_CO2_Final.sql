{{ config(materialized='table') }}

SELECT
    year,
    region_name,
    sub_region_name,
    area AS country,
    animal_vegetal AS origin_type,
    category AS food_group,
    food_product AS item_group,
    item,
    value AS value_tonnes,
    loss_percentage,
    ROUND(loss_value,0) AS loss_value_tonnes,
    total_emissions,
    ROUND(total_emissions * loss_value,0) AS wasted_CO2_tonnes,
    ROUND(total_emissions * value,0) AS producted_CO2_tonnes
FROM {{ ref('merge_CO2_production') }}