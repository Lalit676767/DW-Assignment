{{
    config(
        materialized='table',
        unique_key='orderid'
    )
}}
SELECT distinct
    Returned,
    OrderID as orderid_key,
    Region

FROM  {{source('snowflake_cred1','GSRETURNS')}}
