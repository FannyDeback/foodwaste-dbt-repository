with 

source as (

    select * from {{ source('raw', 'production_new') }}

),

renamed as (

    select
        domain code,
        domain,
        area_code,
        area,
        element code,
        element,
        item code,
        item,
        year code,
        year,
        unit,
        value,
        flag,
        flag description,
        note,
        sub region name,
        region name,
        co2_id

    from source

)

select * from renamed
