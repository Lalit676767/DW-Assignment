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
    sales*quantity as revenue,
    state,
    quantity,
    dicount,
    profit,
    profit/revenue as profit_margin
FROM  {{source('snowflake_cred1','GSORDERS')}}