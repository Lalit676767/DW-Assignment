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
    city,
    sales,
    quantity,
    dicount,
    profit
FROM  {{source('snowflake_cred1','GSORDERS')}}