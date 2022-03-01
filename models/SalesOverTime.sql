{{
    config(
        materialized='view'
    )
}}
SELECT 
    sum(sales),
    month(shipdate) as months
FROM  {{source('snowflake_cred1','GSORDERS')}}
group by months
