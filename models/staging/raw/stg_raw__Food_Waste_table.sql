with 

source as (

    select * from {{ source('raw', 'Food_Waste_table') }}

),

renamed as (

    select
        m49_code,
        country,
        region,
        cpc_code,
        commodity,
        year,
        loss_percentage,
        loss_percentage_original,
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
