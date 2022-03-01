# DW-Assignment

Sources : GSOrders.xlsx, GSReturns.csv

Tools: DBT Cloud, Snowflake, Github

Modelling: Star Schema 

Dimension Tables: customertbl, ordersTbl,peopleTbl, productTbl, regionTbl, returnTbl

Fact Table: fact1

Data Ingestion: Csv through Seeding, Xlsx through loading in Snowflake .

Metrics : 

Sales Over Time​

1) Sales Per Product Category last year​

2) Top Selling States and Regions last year​

3) Month on Month Change in Sales last year​

4) Return Rate per State last year​

5) Rank Salesperson by Sales last year​

6) Sales Growth by Product Category last year​

7) Sales, Profit and Profit Margin per Month last year​

8) Sales per Salesperson measured against their yearly Objectives​

9) What is our average revenue per sale​

10) What is the reduction of revenue from returns​

Scheduling: DBT Cloud (Every Hour)


