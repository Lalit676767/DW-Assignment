Sources : GSOrders.xlsx, GSReturns.csv

Tools: DBT Cloud, Snowflake, Github

Modelling: Star Schema

Dimension Tables: customertbl, ordersTbl,peopleTbl, productTbl, regionTbl, returnTbl

Fact Table: fact1

Data Ingestion: Csv through Seeding, Xlsx through loading in Snowflake .

Metrics :

Sales Over Time​

Sales Per Product Category last year​

Top Selling States and Regions last year​

Month on Month Change in Sales last year​

Return Rate per State last year​

Rank Salesperson by Sales last year​

Sales Growth by Product Category last year​

Sales, Profit and Profit Margin per Month last year​

Sales per Salesperson measured against their yearly Objectives​

What is our average revenue per sale​

What is the reduction of revenue from returns​

Scheduling: DBT Cloud (Every Hour)
