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
    value,
    loss_percentage,
    loss_value,
    total_emissions
FROM {{ ref('merge_CO2_production') }}