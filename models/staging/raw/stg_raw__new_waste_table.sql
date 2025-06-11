with 

source as (

    select * from {{ source('raw', 'new_waste_table') }}

),

renamed as (

    select
        m49_code,
        country,
        cpc_code,
        commodity,
        PARSE_DATE('%Y', CAST(year AS STRING)) AS year,
        loss_percentage,
        activity,
        food_supply_stage,
        cause_of_loss,
        method_data_collection,
        reference,
        notes

    from source

)

select * from renamed
