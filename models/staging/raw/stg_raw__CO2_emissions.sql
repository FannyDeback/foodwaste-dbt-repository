with 

source as (

    select * from {{ source('raw', 'CO2_emissions') }}

),

renamed as (

    select
        food_product,
        land_use_change,
        animal_feed,
        farm,
        processing,
        transport,
        packging,
        retail,
        total_emissions,
        eutrophying_emissions_per_1000kcal__gpo___eq_per_1000kcal_,
        eutrophying_emissions_per_kilogram__gpo___eq_per_kilogram_,
        eutrophying_emissions_per_100g_protein__gpo___eq_per_100_grams_protein_,
        freshwater_withdrawals_per_1000kcal__liters_per_1000kcal_,
        freshwater_withdrawals_per_100g_protein__liters_per_100g_protein_,
        freshwater_withdrawals_per_kilogram__liters_per_kilogram_,
        greenhouse_gas_emissions_per_1000kcal__kgco___eq_per_1000kcal_,
        greenhouse_gas_emissions_per_100g_protein__kgco___eq_per_100g_protein_,
        land_use_per_1000kcal__m___per_1000kcal_,
        land_use_per_kilogram__m___per_kilogram_,
        land_use_per_100g_protein__m___per_100g_protein_,
        scarcity_weighted_water_use_per_kilogram__liters_per_kilogram_,
        scarcity_weighted_water_use_per_100g_protein__liters_per_100g_protein_,
        scarcity_weighted_water_use_per_1000kcal__liters_per_1000_kilocalories_,
        category,
        cast(co2_cat_id as INT64) AS co2_cat_id,
        CASE
            When co2_cat_id = "4" then "animal"
            When co2_cat_id = "9" then "animal"
            When co2_cat_id = "12" then "animal"
            When co2_cat_id = "14" then "animal"
            When co2_cat_id = "16" then "animal"
            When co2_cat_id = "25" then "animal"
            When co2_cat_id = "26" then "animal"
            else "veg"
        END AS animal_vegetal

    from source


)

select * from renamed