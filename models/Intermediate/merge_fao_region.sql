Select
m.*
,r.region_code
,r.region_name
,r.sub_region_code
,r.sub_region_name
,m.area_code as test_code
,r.country_code
FROM {{ ref('merge_fao') }} AS m
left JOIN {{ ref('stg_raw__Region_Country_Code') }} AS r
ON area_code = country_code