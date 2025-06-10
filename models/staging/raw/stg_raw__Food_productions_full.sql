with 

source as (

    select * from {{ source('raw', 'Food_productions_full') }}

),

renamed as (

    select
        domain,
<<<<<<< HEAD
        Area Code _M49_,
        area,
        element,
        item code _cpc_,
=======
        `area code _m49_` as area_code,
        area,
        element,
        REGEXP_REPLACE(`item code _cpc_`, r'^0+', '') as item_code,
>>>>>>> 893a9a5331799f9e48c0d0d7b9db2c47da109c33
        item,
        PARSE_DATE('%Y', CAST(year AS STRING)) AS year,
        unit,
        value,
        flag,
        flag description,
        note

    from source

)

select * from renamed
