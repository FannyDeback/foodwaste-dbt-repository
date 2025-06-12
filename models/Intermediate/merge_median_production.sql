SELECT
    p.*,
    m.loss_percentage,
    p.value * m.loss_percentage/100 AS loss_value
FROM {{ ref('stg_raw__production') }} AS p
INNER JOIN {{ ref('stg_raw__Loss_mediane') }} AS m
    ON p.item_code = m.cpc_code