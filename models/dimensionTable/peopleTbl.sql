{{
    config(
        materialized='table',
        unique_key='PERSON'
    )
}}
SELECT distinct
    PERSON,
    REGION

FROM  {{source('snowflake_cred1','GSPEOPLE')}}
