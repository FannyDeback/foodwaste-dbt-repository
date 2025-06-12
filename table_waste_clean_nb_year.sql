WITH country_years AS (
  SELECT
    country,
    COUNT(DISTINCT year) AS nb_years
  FROM
    {{ ref('stg_raw__new_waste_table') }}
  GROUP BY
    country
  HAVING
    COUNT(DISTINCT year) > 2
)
SELECT
  f.*
FROM
  {{ ref('stg_raw__new_waste_table') }} f
JOIN
  country_years cy
ON
  f.country = cy.country
