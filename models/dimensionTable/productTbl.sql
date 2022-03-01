
{{
    config(
        materialized='table',
        unique_key='PRODUCTID'
    )
}}
SELECT distinct
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
FROM  {{source('snowflake_cred1','GSORDERS')}}
