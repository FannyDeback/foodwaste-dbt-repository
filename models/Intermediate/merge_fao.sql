SELECT
    id
    ,p.item as item
    ,p.year as year_prod
    ,w.country as country
    ,loss_percentage
    ,tons
    ,w.item_code
    ,p.area_code
FROM {{ ref('Groupby_waste') }} w
INNER JOIN {{ ref('Groupby_production') }} p
    USING(id)
-- inner join 2164
-- full outer join 186062