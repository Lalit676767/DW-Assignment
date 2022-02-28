-- incremental models allow dbt to insert or update records into a table since the last time that dbt was run.
-- https://docs.getdbt.com/docs/building-a-dbt-project/building-models/materializations/
{{
    config(
        materialized='table',
        unique_key='PRODUCTID'
    )
}}
SELECT
    PRODUCTID,
    PRODUCTNAME,
    CATEGORY,
    SUBCATEGORY
FROM  {{source('snowflake_cred1','GSORDERS')}}
