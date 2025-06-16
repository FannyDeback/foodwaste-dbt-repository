SELECT
    *,
    CONCAT(year,"_",area,"_",item_code) AS id
FROM {{ ref('stg_raw__production') }}