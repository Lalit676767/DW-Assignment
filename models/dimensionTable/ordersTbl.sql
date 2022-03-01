
{{
    config(
        materialized='table',
        unique_key='ROWID'
    )
}}
SELECT rowid,
    orderid,
    orderdate,
    shipdate,
    shipmode,
    sales,
    quantity,
    dicount,
    profit,
    orderpriority
FROM  {{source('snowflake_cred1','GSORDERS')}}
