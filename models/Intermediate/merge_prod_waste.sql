SELECT
    p.*,
    w.loss_percentage
FROM {{ ref('production_clean') }} AS p
INNER JOIN {{ ref('waste_clean') }} as w
 USING(id)
