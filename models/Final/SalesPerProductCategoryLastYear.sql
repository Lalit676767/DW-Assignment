{{
    config(
        materialized='view'
    )
}}
SELECT 
sum(to_number(trim(f.sales,'$'),10,2)) SALES
,max(year(o.SHIPDATE))-1 last_year
,p.CATEGORY CATEGORY
FROM  {{ref('productTbl')}} p
join
{{ref('fact1')}} f
on p.PRODUCTID_KEY=f.PRODUCTID
join
{{ref('ordersTbl')}} o
on f.rowid=o.rowid_key
group by CATEGORY