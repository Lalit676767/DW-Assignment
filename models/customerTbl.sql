
{{
    config(
        materialized='table',
        unique_key='customerid'
    )
}}
SELECT
    customerid,
    customername,
    segmane,
    city,
    state,
    country,
    region,
    market

FROM  {{source('snowflake_cred1','GSORDERS')}}
