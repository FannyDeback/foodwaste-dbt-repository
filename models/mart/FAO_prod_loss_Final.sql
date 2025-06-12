{{ config(materialized='table') }}

SELECT
    year,
    region_name,
    sub_region_name,
    area AS country,
    item,
    value,
    loss_percentage,
    loss_value   
FROM {{ ref('merge_median_production') }}