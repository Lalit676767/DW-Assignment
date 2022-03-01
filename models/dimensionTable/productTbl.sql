
{{
    config(
        materialized='table',
        unique_key='PRODUCTID'
    )
}}
SELECT distinct
    PRODUCTID as PRODUCTID_key,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
FROM  {{source('snowflake_cred1','GSORDERS')}}
