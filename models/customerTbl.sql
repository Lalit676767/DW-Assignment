
{{
    config(
        materialized='table',
        unique_key='customerID'
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
