Select
    c.co2_cat_id,
    m.*  
from {{ ref('mergeregion_fao') }} as m
left join {{ ref('stg_raw__CO2_cat_code') }} as c
 ON item_code = item_code__cpc_
