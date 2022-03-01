
{{
    config(
        materialized='table',
        unique_key='customerid'
    )
}}
SELECT distinct
    customerid as customerid_key ,
    customername,
    segmane

FROM  {{source('snowflake_cred1','GSORDERS')}}
