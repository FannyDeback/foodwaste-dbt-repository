with 

source as (

    select * from {{ source('raw', 'production') }}

),

renamed as (

    select
        `domain code`       as domain_code,
        domain,
        area_code,
        area,
        `element code`      as element_code,
        element,
        `item code`         as item_code,
        item,
        `year code`         as year_code,
        year,
        unit,
        value,
        flag,
        `flag description`  as flag_description,
        note,
        `sub region name`   as sub_region_name,
        `region name`       as region_name,
        co2_id

    from source
)

select * from renamed
