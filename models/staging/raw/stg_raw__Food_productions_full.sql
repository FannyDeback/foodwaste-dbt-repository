with 

source as (

    select * from {{ source('raw', 'Food_productions_full') }}

),

renamed as (

    select
        domain,
        area,
        element,
        item,
        year,
        unit,
        value,
        flag,
        flag description,
        note

    from source

)

select * from renamed
