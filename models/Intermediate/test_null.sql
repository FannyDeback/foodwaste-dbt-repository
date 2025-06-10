SELECT count(*)
FROM {{ ref('int_merge_fao') }}
WHERE commodity_prod is null