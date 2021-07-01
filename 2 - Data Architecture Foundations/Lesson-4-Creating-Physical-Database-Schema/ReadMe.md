# Notes

## Lesson Overview

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

**Storage algorithm**

It is purely academic. As a data architect, you will not be developing or designing data storage algorithms, but knowing the basics of the most common data storage approaches may come in handy in the interview one day.

![image](https://user-images.githubusercontent.com/68102477/122493566-44b7cf00-d02b-11eb-830f-c3318a8e38eb.png)

### Heap

**Heap files:** Heap files are a group of unordered lists of records where new records are appended to the end of the existing lists. This algorithm allows very fast writing and is perfect for the bulk loading of data. But it has poor sorting performance since the data is not ordered, which makes retrieving specific data very slow.

Great for bulk record ingestion, but not great for lookups

![image](https://user-images.githubusercontent.com/68102477/122493607-56997200-d02b-11eb-8e10-e589e345e7d8.png)

### Hash Buckets

Buckets divide memory into pages and when a record comes in, a hash function (math function) is calculated to determine which page it goes on. This algorithm ensures more even distribution of records across the memory. It is **good for locating specific records (allow for fast lookup based on keys)** since it creates a kind of key index. But it is not good for large data retrieval, since it has no sequential storage (meaning records are not stored in order, one after the other, they are instead stored across multiple pages based on their hash value).

![image](https://user-images.githubusercontent.com/68102477/122493703-7c267b80-d02b-11eb-908d-9043750cd855.png)

### B+ Trees

B+ tree is the **most commonly used storage algorithm.** It stores records in pages as well, but it indexes the record in a binary tree. It allows fast search due to the full index and binary design. It can also be easily scaled up for large databases. However, for stable, not volatile data, a heap file may work better since heap has less overhead.

![image](https://user-images.githubusercontent.com/68102477/122493771-99f3e080-d02b-11eb-82d0-be6668fd72f5.png)

### Data Storage hardware

**Storage media**

**Tape:** Tape is the earliest form of storage, and it is the slowest. It is nowadays usually relegated to **archive data only.**

**Hard drive** (spinning disc, SSD): Hard drive is the most common storage option. SSD is multiple times faster than a spinning disc.

**In-memory (RAM)**: In-memory data is very fast but very expensive. You need to limit the use of in-memory storage to the application that really requires it.

![image](https://user-images.githubusercontent.com/68102477/122529420-d1c94b00-d060-11eb-9a2d-8353fcfdf1d0.png)

![image](https://user-images.githubusercontent.com/68102477/122533353-d1cb4a00-d064-11eb-8fd4-5b1adf4a3100.png)


### Further Reading

Heap Files: [reading 1](http://pages.cs.wisc.edu/~dbbook/openAccess/Minibase/spaceMgr/heap_file.html), [reading 2](https://www.geeksforgeeks.org/file-organization-in-dbms-set-1/)
Hash Buckets: [reading 1](https://www.tutorialspoint.com/dbms/dbms_hashing.htm) and [reading 2](https://www.youtube.com/watch?v=MfhjkfocRR0)
B+ Trees: [reading 1](https://www.geeksforgeeks.org/introduction-of-b-tree/), [reading 2](https://www.guru99.com/introduction-b-plus-tree.html)


## 3. Build a functioning database

DDL: Data definition language - a set of SQL commands used to create, modify, and delete database objects such as tables, views, and stored procedures

DML: Data manipulation language - a set of SQL commands used to manipulate data inside of a database

## Use DDL to Create A Database

![image](https://user-images.githubusercontent.com/68102477/122534538-fa077880-d065-11eb-8e42-78f51efa6c87.png)

![image](https://user-images.githubusercontent.com/68102477/122534573-04297700-d066-11eb-93be-cdbe8b86d78a.png)

![image](https://user-images.githubusercontent.com/68102477/122534655-16a3b080-d066-11eb-8a51-971289d0ee9b.png)

![image](https://user-images.githubusercontent.com/68102477/122534820-3fc44100-d066-11eb-915b-d38536b4006c.png)

![image](https://user-images.githubusercontent.com/68102477/122534893-55d20180-d066-11eb-8dfe-69f624d9e02f.png)


### Use DDL to Create A Database 



### Further reading

Here are is an [overview article of DDL, DML, and even DCL and TCL](https://www.tutorialgateway.org/sql-dml-ddl-dcl-and-tcl-commands/)

Here is the official [PostGreSQL documentation on DDL](https://www.postgresql.org/docs/8.4/ddl.html)


## 4. Common Data ingestion Methods: ETL, Direct Feed, Pipeline, API

Data ingestion is just as important as database design, perhaps more so. An empty database is not much of use to anybody. In this section, we covered four of the most common methods of data ingestion.

Few of the different data ingestion methods include API, ETL, Pipeline, and direct connection.

**ETL**

ETL is short for extract, transform, load. ETL starts with data from an external source, then the data is extracted and put into a staging area such as a table, the data is then transformed to meet the requirements of the destination. Finally, the data is loaded into a destination database.

ETL is the most common data ingestion method. It is **usually be done as a batch job** to move data from any format into a database. It is great for large loads of data.

![image](https://user-images.githubusercontent.com/68102477/122509873-e0efcf00-d047-11eb-80dd-1792a0b2cf3f.png)

**Direct feed**

Direct feeds are 1 to 1 connections between databases. They can be linked servers if you work with MS SQL. Data is pushed to the destination or pulled from the destination server via queries. It is quick and easy to use but not great for large data loads.

![image](https://user-images.githubusercontent.com/68102477/122510090-4fcd2800-d048-11eb-815a-a97d04ef8d13.png)


**Pipeline**
A data pipeline is a series of steps that takes data from various sources, reformat it possibly, and move it to data destinations. It is usually broken down into three steps: taking data from the data sources, processing data, and moving data to the  destination. It is usually not managed by batch jobs. 

![image](https://user-images.githubusercontent.com/68102477/122510134-6a070600-d048-11eb-90d7-06c7219de1c7.png)

?? ETL are generally used for batch jobs only where as data pipelines are used for real time or near real time updates.

**API**
The application programming interface (API) is an interface between an application or a website and the database. It allows customers to safely access the database.

The API allows users to run only the pre-approved commands against your database. It is fast, secure, and used heavily on websites and mobile apps.
![image](https://user-images.githubusercontent.com/68102477/122510429-edc0f280-d048-11eb-8887-2d069cf1d071.png)

### ETL, Direct Feed, Pipeline, API Walkthrough/Exercise

**-- create stage table**
Create table Stg(
player varchar(50),
team varchar(50),
position varchar(50));

**-- load data into stage table**
Insert into Stg
Values ('Bob', 'Browns', 'Quarterback'),
('Tyrell', 'Reds', 'Full Back'),
('Darrin', 'Blues', 'Kicker'),
('Frank', 'Reds', 'Quarterback');

**Note that there is no need to define PK, FK or 3NF for staging tables. Staging tbales are loaded with raw data from upstream systems.**
**Following are the ODS tables where data is in 3NF**

**-- create a Team table**

Create table Team (
team_id serial primary key,
team_nm varchar(50));

**-- create a Position Table**
Create table Position (
position_id serial primary key,
position_nm varchar(50));

**-- create a Player table**
Create table Player (
player_id serial primary key,
player_nm varchar(50),
team_id int references Team(team_id),
position_id int references Position(position_id));

**-- load data into Team table**
Insert into Team(team_nm)
Select distinct team from Stg;

**no need to insert value for id, it will be auto-incremented.

**--load data into Position table**
Insert into Position(position_nm)
Select distinct position from Stg;

**since player table has foriegn keys to poistion and team tables, position and team tables should be loaded first.** 

**--insert into Player table**
Insert into Player(player_nm, team_id, position_id)
Select s.player, t.team_id, p.position_id
From stg as s
Join team as t 
On s.team = t.team_nm
Join position as p 
On s.position = p.position_nm;

### Another small example

![image](https://user-images.githubusercontent.com/68102477/122521171-d76e6300-d057-11eb-8814-313f1ff97954.png)

**Convert to 3NF**
create new database objects based on the 3NF transformation
move the data from the stage_table to the new objects you created

**Business Rules**
every student will take more than one class, so a mapping table will be needed to make this database work

**Solution**

![image](https://user-images.githubusercontent.com/68102477/122521642-6ed3b600-d058-11eb-8745-cb92f8515c9d.png)

CREATE TABLE Student (
student_id SERIAL primary key,
student_name varchar(50));

CREATE TABLE Teacher (
teacher_id  SERIAL primary key,
teacher_name varchar(50));

CREATE TABLE Class (
class_id  SERIAL primary key,
class_name varchar(50));

CREATE TABLE Class_Sch (
student_id int REFERENCES Student(student_id),
teacher_id int REFERENCES Teacher(teacher_id),
class_id int REFERENCES Class(class_id),
primary key (student_id, teacher_id, class_id));

**Mapping tables such as Class_Sch and Player helps in removing duplicate data from other tables**

### Questions: schedule ??
should we have separate pipeline / job to load staging tables and ODS tables ?....Or shud we have one job with first task to update staging tables and then next task to update ODS table.
should we have foreign key constraints in ODS with big data ??

**Further reading**

Google maps is a fun, free API you can learn to work with. It is often taught as the first API many people interact with. API: [Google Maps](https://www.w3schools.com/graphics/google_maps_intro.asp)

A general discussion on how to use APIs. API: [How to use APIs](https://snipcart.com/blog/apis-integration-usage-benefits)

This tutorial walks you through REST API, a commonly used API approach. REST API: [REST API Tutorial](https://www.restapitutorial.com/)

A more succinct discussion on REST API. REST API: [What is REST API](https://restfulapi.net/)

This link will take you to an article on creating a direct connection between servers using MS SQL Server. (Note, direct connections in MS SQL Server are called Linked Servers). Direct Connection: [Microsoft SQL Server Linked Servers](https://analytics4all.org/2018/03/30/sql-server-linked-servers)

Here is a brief set of articles on ETL using Microsoft SSIS (SQL Server Integration Services) as the ETL tool. ETL: Microsoft SSIS

Here is a look at AWS data pipeline tool. Pipeline: AWS data pipeline

New terms
API: application programming interface -- a software middle-ware solution for managing data access
Direct Feed: a direct connection to another database, allowing for direct data transfers
ETL: extract, transform, load - a methodology for moving data from different sources to a database. Typically bulk load or scheduled jobs (not real-time).
Pipeline: method of moving data from multiple sources - often in real-time (or close to real-time)
;

### Further Reading

This link will take you to an article on creating a direct connection between servers using MS SQL Server. (Note, direct connections in MS SQL Server are called Linked Servers). Direct Connection: [Microsoft SQL Server Linked Servers](https://analytics4all.org/2018/03/30/sql-server-linked-servers)

Here is a brief set of articles on ETL using Microsoft SSIS (SQL Server Integration Services) as the ETL tool. ETL: [Microsoft SSIS](https://analytics4all.org/etl-ssis/)

Here is a look at AWS data pipeline tool. Pipeline: [AWS data pipeline](https://www.edureka.co/blog/aws-data-pipeline-tutorial/)


## 5. CRUD

**Create**

Create object_type object-name 
(parameters);

-- example

Create table Test (
Column_a int,
Column_b varchar(50));

### Read

-- select all

Select *
From Test;

-- select column

Select Column_A
From Test;

-- limit result

Select *
From Test
Where Column_B = ‘Hello’

**Update**

-- insert, add data to a table

Insert into Test (Column_A, Column_B)
Values (1, ‘Hello’),
(2, ‘Good-bye’);

-- update, change existing values in a table

Update Test 
Set Column_B = ‘Bonjour’
Where Column_A = 1;

**Delete**
-- delete individual records

Delete from Test
Where Column_A = 1;

-- delete everything from the table

Truncate table Test;

![image](https://user-images.githubusercontent.com/68102477/124079623-b9a7f180-da8c-11eb-844b-9b75a46fa1d7.png)

First partner with Subject Matter Expert to understand the data.

ETL steps
Create Tables

CREATE TABLE Grade_lvl (
grade_lvl_id SERIAL primary key,
grade_lvl int);

CREATE TABLE Student (
student_id SERIAL primary key,
student_name varchar(50),
grade_lvl_id int REFERENCES Grade_lvl (grade_lvl_id));

CREATE TABLE Teacher (
teacher_id  SERIAL primary key,
teacher_name varchar(50));

CREATE TABLE Class (
class_id  SERIAL primary key,
class_name varchar(50));

CREATE TABLE Grade (
grade varchar(2),
student_id int REFERENCES Student(student_id),
teacher_id int REFERENCES Teacher(teacher_id),
class_id int REFERENCES Class(class_id),
primary key (grade, student_id, class_id));

### LOAD DATA INTO TABLES

INSERT INTO Grade_Lvl (grade_lvl)
SELECT DISTINCT(grade_lvl) FROM stg_tbl;

INSERT INTO Student (student_name, grade_lvl_id)
SELECT DISTINCT(s.student), g.grade_lvl_id FROM stg_tbl AS s
JOIN Grade_lvl AS g 
ON s.grade_lvl = g.grade_lvl;

INSERT INTO Teacher(teacher_name)
SELECT DISTINCT(teacher) FROM stg_tbl;

INSERT INTO Class (class_name)
SELECT DISTINCT(class) FROM stg_tbl;

INSERT INTO Grade (grade, student_id, teacher_id, class_id)
SELECT s.grade, st.student_id, t.teacher_id, c.class_id
FROM stg_tbl AS s
JOIN Student AS st
ON s.student = st.student_name
JOIN Teacher AS t
ON s.teacher = t.teacher_name
JOIN Class AS c
ON s.class = c.class_name;



### Further reading
Below you will find a series of articles on basic SQL functions need to complete this section and your final project. Note, these articles are written for MS SQL Server, but they cover the main topics.

[Select function](https://analytics4all.org/2016/04/13/sql-select-statement/)

Select functions [count, distinct, max, min](https://analytics4all.org/2016/04/14/sql-select-functions-top-count-distinct-max-min/)

The [where clause](https://analytics4all.org/2016/04/18/sql-where-clause/)

Aggregates [group by, having](https://analytics4all.org/2016/04/26/sql-aggregates-group-by-and-having/)

[Case statements](https://analytics4all.org/2017/01/09/sql-case-statement/)

[Intro to Joins](https://analytics4all.org/2016/04/28/sql-intro-to-joins/)

[4 types of joins](https://analytics4all.org/2016/05/04/sql-4-types-of-joins/)



# COURSE SUMMARY

While this was a foundations course, we did cover a lot of information. Looking back, if I had to redo this course, cutting some material from it, what would survive the cut?

1) Business Partner focused (customer-centric): I can't express this enough. This job is not simply about how good you are technically. At this level, we all assume you have technical chops. Now it is time to focus on being a member of the business facing environment. This can be intimidating, and it takes practice, but it is something you will need to learn to do well in this position.

2) What is the difference between model and schema? Come on, I made sure I highlighted this throughout the course. Models are abstract - can be used anywhere, a schema is designed with a specific RDBMS in mind.

3) Learn the 3NF, how to apply it, and when not to. I assure you, it becomes almost second nature after a while.

4) Speaking of 3NF, learn to let the needs of the database drive the design. 3NF, and other modeling techniques, are guidelines not mandates. Sometimes the database needs suggest adjusting your design away from guidelines.

5) Learn to build and read ERDs. Often that is the only piece of information you have to go on when taking over a database project.

6) Be creative. Difficult problems require creative solutions. As a data architect, you will not easily find the answer to all your problems in a textbook. You have the technical know-ho, and if you let your creativity flow, you can build great solutions.

By now, you should be able to:

Explain the characteristics of good data architecture
Take business and functional requirements and turn them into preliminary (non-technical) database design descriptions
Describe different types of storage systems and formats
Develop the conceptual, logical, and physical data model utilizing data integrity, cardinality principles
Design a normalized relational model and its underlying schema in 3NF, given a set of business requirements.
Create a structural diagram (ERD) for database design using visual tools such as Lucidchart
Translate a simple ERD into a physical database schema using SQL DDL commands
Create and populate a database/data repository platform, such as MySQL, PostgreSQL
Develop and run SQL queries with CRUD operations against the database to test the data model and the data it maintains
