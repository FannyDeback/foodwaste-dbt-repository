with 

source as (

    select * from {{ source('raw', 'Food_productions_full') }}

),

renamed as (

    select
        domain code,
        domain,
        area code _m49_,
        area,
        element code,
        element,
        item code _cpc_,
        item,
        year code,
        year,
        unit,
        value,
        flag,
        flag description,
        note

    from source

)

select * from renamed
