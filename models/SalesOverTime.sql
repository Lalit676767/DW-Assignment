{{
    config(
        materialized='view'
    )
}}
SELECT 
sum(to_number(trim(sales,'$'),10,2)) total_sales
,month(shipdate) as months
,year(shipdate) as years
FROM  {{ref('ordersTbl')}}
group by months,years
order by months,years
