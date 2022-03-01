{{
    config(
        materialized='table',
        unique_key='ROWID'
    )
}}
SELECT rowid,
    orderid,
    customerid,
    PRODUCTID,
    city
FROM  {{source('snowflake_cred1','GSORDERS')}}