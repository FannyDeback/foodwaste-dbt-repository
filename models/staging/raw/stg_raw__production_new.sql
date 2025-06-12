with 

source as (

    select * from {{ source('raw', 'production_new') }}

),

renamed as (

    select
<<<<<<< HEAD:models/staging/raw/stg_raw__production_new.sql
        domain code,
        domain,
        area_code,
        area,
        element code,
        element,
        item code,
        item,
        year code,
=======
        `domain code`       as domain_code,
        domain,
        area_code,
        area,
        `element code`      as element_code,
        element,
        `item code`         as item_code,
        item,
        `year code`         as year_code,
>>>>>>> 3502d85e71ab1662c389b96daad509400b133a7b:models/staging/raw/stg_raw__production.sql
        year,
        unit,
        value,
        flag,
<<<<<<< HEAD:models/staging/raw/stg_raw__production_new.sql
        flag description,
        note,
        sub region name,
        region name,
=======
        `flag description`  as flag_description,
        note,
        `sub region name`   as sub_region_name,
        `region name`       as region_name,
>>>>>>> 3502d85e71ab1662c389b96daad509400b133a7b:models/staging/raw/stg_raw__production.sql
        co2_id

    from source
)

select * from renamed
