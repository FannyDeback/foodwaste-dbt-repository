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
    loss_value AS loss_value_tonnes,
    total_emissions,
    total_emissions * loss_value AS wasted_CO2_tonnes
    total_emissions * value AS producted_CO2_tonnes
FROM {{ ref('merge_CO2_production') }}