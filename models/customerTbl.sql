
{{
    config(
        materialized='table',
        unique_key='customerid'
    )
}}
SELECT distinct
    customerid,
    customername,
    segmane

FROM  {{source('snowflake_cred1','GSORDERS')}}
