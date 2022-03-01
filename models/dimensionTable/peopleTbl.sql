{{
    config(
        materialized='table',
        unique_key='PERSON'
    )
}}
SELECT distinct
    PERSON ,
    REGION as REGION_KEY

FROM  {{source('snowflake_cred1','GSPEOPLE')}}
