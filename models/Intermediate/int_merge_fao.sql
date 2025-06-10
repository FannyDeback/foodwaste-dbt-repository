SELECT
    id
    ,p.commodity as commodity_prod
    ,w.commodity as commodity_waste
    ,p.year as year_prod
    ,w.year as year_waste
    ,p.country as country_prod
    ,w.country as country_waste 
    ,loss_percentage
    ,tons
    ,m49_code
FROM {{ ref('Groupby_waste') }} w
FULL OUTER JOIN {{ ref('Groupby_production') }} p
    USING(id)
-- inner join 2164
-- full outer join 186062