with 

source as (

    select * from {{ source('raw', 'Region_Country_Code') }}

),

renamed as (

    select
        region_code,
        region_name,
        sub_region_code,
        sub_region_name,
        intermediate_region_code,
        intermediate_region_name,
        country_or_area,
        m49_code

    from source

)

select * from renamed
