with 

source as (

    select * from {{ source('raw', 'Loss_mediane') }}

),

renamed as (

    select
        commodity,
        cpc_code,
        loss_percentage

    from source

)

select * from renamed
