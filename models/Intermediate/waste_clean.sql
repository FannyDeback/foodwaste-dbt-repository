SELECT
    year, 
    country, 
    commodity,
    cpc_code,
    ROUND(AVG(loss_percentage),2) AS loss_percentage,
    CONCAT(year,"_",country,"_",cpc_code) AS id
FROM {{ ref('stg_raw__new_waste_table') }} 
GROUP BY year, country, commodity, cpc_code
ORDER BY country, commodity
