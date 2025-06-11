with 

source as (

    select * from {{ source('raw', 'CO2_cat_code') }}

),

renamed as (

    select
        food_product_,
        co2_cat_id,
        item,
        item_code__cpc_

    from source

)

select * from renamed
