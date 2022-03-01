
{{
    config(
        materialized='table',
        unique_key='city'
    )
}}
SELECT distinct
    postalcode,
    city,
    state,
    country,
    region,
    market

FROM  {{source('snowflake_cred1','GSORDERS')}}
