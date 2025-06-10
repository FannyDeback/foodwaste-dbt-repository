with 

source as (

    select * from {{ source('raw', 'Food_Waste_table') }}

),

renamed as (

    select
        m49_code as area_code,
        country,
        region,
        cpc_code as item_code,
        commodity,
        PARSE_DATE('%Y', CAST(year AS STRING)) AS year,
        loss_percentage,
        loss_quantity,
        activity,
        food_supply_stage,
        treatment,
        cause_of_loss,
        sample_size,
        method_data_collection,
        reference,
        url,
        notes

    from source

)

select * from renamed
