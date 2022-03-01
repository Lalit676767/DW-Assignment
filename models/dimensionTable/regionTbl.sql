
{{
    config(
        materialized='table',
        unique_key=('city','state')
    )
}}
SELECT distinct
    postalcode,
    city as city_key,
    state as state_key,
    country,
    region,
    market

FROM  {{source('snowflake_cred1','GSORDERS')}}
