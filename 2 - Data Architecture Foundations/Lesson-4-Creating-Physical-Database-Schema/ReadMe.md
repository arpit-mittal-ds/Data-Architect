# Notes

## Lesson Overview - 3 main topics: 

1. Factors that affect Database Performance. Solutions: caching and indexing. 

2. Storage and File Systems

3. Use DDL to Build A Database 

4. ETL, Direct Feed, Pipeline, API: common data ingestion methods

5. Database CRUD Operations

![image](https://user-images.githubusercontent.com/68102477/122392980-bce4ad00-cfb7-11eb-8269-8e38d6b33096.png)



## 1. Factors that affect Database Performance

![image](https://user-images.githubusercontent.com/68102477/122393886-b60a6a00-cfb8-11eb-820b-da8fad93ca4d.png)

![image](https://user-images.githubusercontent.com/68102477/122394131-f833ab80-cfb8-11eb-8c7e-6656d39cdafb.png)

### Cache and Indexing

While many of the aspects affecting database performance are generally out of the hands of data architect, we focused on two common aspects you should be aware of:

Cache and Indexing.

Both can improve database performance, and you should be aware of the uses of both technologies.


![image](https://user-images.githubusercontent.com/68102477/122394699-9e7fb100-cfb9-11eb-8489-ecc85287b89f.png)


**Cache**

Cache is a place to store commonly used data in high-performance memory so the future queries for that data can be run faster.

### There are three types of cache:

![image](https://user-images.githubusercontent.com/68102477/122394908-cd962280-cfb9-11eb-95ed-b886104772fb.png)

**Internal cache:** internal device, limited size, fastest memory, very expensive financially.

**External cache:** external device, high-speed memory, upgrading the size of memory is more affordable than internal cache.

**Enterprise cache:** external device, designed to work for multiple databases, very expensive.

**Indexing**

![image](https://user-images.githubusercontent.com/68102477/122395036-ef8fa500-cfb9-11eb-92a0-ca8802bba943.png)

![image](https://user-images.githubusercontent.com/68102477/122395218-1bab2600-cfba-11eb-8ce2-86a7199ee3eb.png)

### Further Reading

[DB Caching - AWS Whitepaper](https://d0.awsstatic.com/whitepapers/Database/database-caching-strategies-using-redis.pdf)

[Database Indexing](https://www.geeksforgeeks.org/indexing-in-databases-set-1/)


## 2. Storage and File Systems

![image](https://user-images.githubusercontent.com/68102477/122493566-44b7cf00-d02b-11eb-830f-c3318a8e38eb.png)

![image](https://user-images.githubusercontent.com/68102477/122493607-56997200-d02b-11eb-8e10-e589e345e7d8.png)

![image](https://user-images.githubusercontent.com/68102477/122493703-7c267b80-d02b-11eb-908d-9043750cd855.png)

![image](https://user-images.githubusercontent.com/68102477/122493771-99f3e080-d02b-11eb-82d0-be6668fd72f5.png)

### Further Reading

Heap Files: reading 1, reading 2
Hash Buckets: reading 1 and reading 2
B+ Trees: reading 1, reading 2


## 3. Build a functioning database

DDL: Data definition language - a set of SQL commands used to create, modify, and delete database objects such as tables, views, and stored procedures

DML: Data manipulation language - a set of SQL commands used to manipulate data inside of a database

## Use DDL to Create A Database





### Further reading

Here are is an [overview article of DDL, DML, and even DCL and TCL](https://www.tutorialgateway.org/sql-dml-ddl-dcl-and-tcl-commands/)

Here is the official [PostGreSQL documentation on DDL](https://www.postgresql.org/docs/8.4/ddl.html)

### Use DDL to Create A Database 

## ETL, Direct Feed, Pipeline, API

### Data ingestion 

Data ingestion is just as important as database design, perhaps more so. An empty database is not much of use to anybody. In this section, we covered four of the most common methods of data ingestion.

Few of the different data ingestion methods include API, ETL, Pipeline, and direct connection.

**ETL**
ETL is short for extract, transform, load. ETL starts with data from an external source, then the data is extracted and put into a staging area such as a table, the data is then transformed to meet the requirements of the destination. Finally, the data is loaded into a destination database.

ETL is the most common data ingestion method. It is usually be done as a batch job to move data from any format into a database. It is great for large loads of data.



### Further Reading

This link will take you to an article on creating a direct connection between servers using MS SQL Server. (Note, direct connections in MS SQL Server are called Linked Servers). Direct Connection: [Microsoft SQL Server Linked Servers](https://analytics4all.org/2018/03/30/sql-server-linked-servers)

Here is a brief set of articles on ETL using Microsoft SSIS (SQL Server Integration Services) as the ETL tool. ETL: [Microsoft SSIS](https://analytics4all.org/etl-ssis/)

Here is a look at AWS data pipeline tool. Pipeline: [AWS data pipeline](https://www.edureka.co/blog/aws-data-pipeline-tutorial/)


## CRUD

### Further reading
Below you will find a series of articles on basic SQL functions need to complete this section and your final project. Note, these articles are written for MS SQL Server, but they cover the main topics.

[Select function](https://analytics4all.org/2016/04/13/sql-select-statement/)

Select functions [count, distinct, max, min](https://analytics4all.org/2016/04/14/sql-select-functions-top-count-distinct-max-min/)

The [where clause](https://analytics4all.org/2016/04/18/sql-where-clause/)

Aggregates [group by, having](https://analytics4all.org/2016/04/26/sql-aggregates-group-by-and-having/)

[Case statements](https://analytics4all.org/2017/01/09/sql-case-statement/)

[Intro to Joins](https://analytics4all.org/2016/04/28/sql-intro-to-joins/)

[4 types of joins](https://analytics4all.org/2016/05/04/sql-4-types-of-joins/)



