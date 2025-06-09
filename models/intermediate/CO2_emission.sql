SELECT
EXCEPT(loss_percentage_original)
FROM {{ ref('stg_raw__CO2_emissions') }};