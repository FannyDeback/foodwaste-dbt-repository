Select
m.*
,r.region_code,
,r.region_name,
,r.sub_region_code,
,r.sub_region_name,
,r.intermediate_region_code,
,r.intermediate_region_name,
FROM {{ ref('int_merge_fao') }} AS m
JOIN {{ ref('stg_raw__Region_Country_Code') }} AS r
ON item_code = m49_code