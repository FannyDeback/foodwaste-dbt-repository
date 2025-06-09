with 

source as (

    select * from {{ source('raw', 'Food_productions') }}

),

renamed as (

    select
        domain_code,
        domain,
        area_code__m49_,
        area,
        element_code,
        element,
        item_code__cpc_,
        item,
        year_code,
        year,
        unit,
        value,
        flag,
        flag_description,
        note

    from source

)

select * from renamed
