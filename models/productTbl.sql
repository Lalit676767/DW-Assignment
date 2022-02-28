
{{
    config(
        materialized='table',
        unique_key='PRODUCTID'
    )
}}
SELECT
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
FROM  {{source('snowflake_cred1','GSORDERS')}}
