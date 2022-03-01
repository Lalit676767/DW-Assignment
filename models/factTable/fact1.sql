{{
    config(
        materialized='table',
        unique_key='ROWID'
    )
}}
SELECT rowid,
    customerid,
    PRODUCTID,
    city,
    state,
    sales,
    to_number(trim(sales,'$'),10,2)*quantity as revenue,
    quantity,
    dicount,
    profit,
    case when substring(profit,1,1)='-' then round(-to_number(trim(trim(profit,'-'),'$'),10,2)/revenue*100,2) 
    else round(to_number(trim(profit,'$'),10,2)/revenue*100,2) end as profit_margin
FROM  {{source('snowflake_cred1','GSORDERS')}}