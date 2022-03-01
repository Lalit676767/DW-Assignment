{{
    config(
        materialized='table',
        unique_key='orderid'
    )
}}
SELECT distinct
    Returned,
    OrderID,
    Region

FROM  {{source('snowflake_cred1','GSRETURNS')}}
