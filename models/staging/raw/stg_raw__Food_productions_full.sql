with 

source as (

    select * from {{ source('raw', 'Food_productions_full') }}

),

renamed as (

    select
        domain,
        `area code _m49_` as area_code,
        area,
        element,
        REGEXP_REPLACE(`item code _cpc_`, r'^0+', '') as item_code,
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
