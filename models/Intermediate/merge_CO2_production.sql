SELECT
    p.*,    
    e.total_emissions,
    e.food_product,
    e.category,
    e.animal_vegetal
FROM {{ ref('merge_median_production') }} AS p
INNER JOIN {{ ref('stg_raw__CO2_emissions') }} AS e
    ON p.co2_id = e.co2_cat_id
