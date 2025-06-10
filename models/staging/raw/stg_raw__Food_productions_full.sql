with 

source as (

    select * from {{ source('raw', 'Food_productions_full') }}

),

renamed as (

    select
        domain,
        Area Code _M49_,
        area,
        element,
        item code _cpc_,
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
