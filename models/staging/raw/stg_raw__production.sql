with 

source as (

    select * from {{ source('raw', 'production') }}

),

renamed as (

    select
        domain_code,
        domain,
        area_code,
        area,
        element_code,
        element,
        item_code,
        item,
        year,
        unit,
        value,
        flag,
        flag_description,
        sub_region_name,
        region_name,
        co2_id

    from source

)

select * from renamed
