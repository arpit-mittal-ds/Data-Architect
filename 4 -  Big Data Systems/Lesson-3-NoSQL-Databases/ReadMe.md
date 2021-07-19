
# Lesson Overview

1. Fundamental Design principles for SQL Databases and ACID Properties

2. 
We will compare and contrast SQL and NoSQL Databases,

We will discuss the ACID and CAP theorems on top of which relational and non-relational databases are built.

We will demonstrate these concepts using DynamoDB one of the leading industry products.

After our time in Dynamo, we will go into modeling.

# Why NoSQL Databases Matter

Modern applications require high availability and scalability. Applications need to handle the scale of billions of users and millions of concurrent connections

Relational databases struggle when it comes to the scale

Many modern applications do not really require "Strict" consistency for all transactions

NoSQL offers an alternative. Solves some of the challenges faced with relational databases

# SQL

Relational Database Systems Scale vertically. Cannot handle increases in data

Relationships within data are expressed with help of primary keys and foreign keys

Schema needs to be predefined. Hard to alter production tables with existing data if schema evolves

Databases offer ACID capabilities

# [ACID](https://en.wikipedia.org/wiki/ACID)

Achieving ACID transaction for large scale application database which has needs for millions of reads/write per second, the ACID approach prevents relational database to scale beyond a point.

![image](https://user-images.githubusercontent.com/68102477/126086941-69c971cd-3fdc-40c4-a1a8-b8a94c66ee49.png)

**What is a transaction?**

Single unit of work that accesses databases through Read and Write operations.

Every read, write, or query of a database is a transaction.

**ACID Properties**

**Atomicity:** All or nothing for transaction completion.

![image](https://user-images.githubusercontent.com/68102477/126087289-cb7af07c-9d7a-486f-848d-e65c287bda27.png)

**Consistency:** The database must be consistent no matter what happens 100% of the time

![image](https://user-images.githubusercontent.com/68102477/126087397-cbb47422-54fa-4e49-8837-a5038e6192c6.png)

**Isolation:** No transaction should affect the existence of any other transaction.

![image](https://user-images.githubusercontent.com/68102477/126087444-138709a7-fd73-4d7e-8ef2-d5b99135cae5.png)

**Durability:** The database should be able to handle all transactions even if there is a failure somewhere during the transaction processing

![image](https://user-images.githubusercontent.com/68102477/126087474-e068ba2c-b981-4879-afdd-2632f1f05204.png)

![image](https://user-images.githubusercontent.com/68102477/126087745-ae700e7a-077a-4bbe-bb01-c21c2e2872ab.png)

![image](https://user-images.githubusercontent.com/68102477/126086866-30b10e58-d4d8-4a9b-9676-c434a63c3fba.png)

![image](https://user-images.githubusercontent.com/68102477/126086871-d3e7cd65-b2bd-4571-8cfb-2fa8eca8e0e4.png)

Understanding the ACID principle will help you align with the requirements of the applications you are building. Thus, helping you make the right choice of the database for your application. SQL VS NoSQL

# NoSQL Databases

![image](https://user-images.githubusercontent.com/68102477/126087868-d92d0146-93cd-47a1-a8c6-7726bd8e6d75.png)

![image](https://user-images.githubusercontent.com/68102477/126087899-88f036fb-f2cf-4f8e-8f4d-b82086ecdfdd.png)

![image](https://user-images.githubusercontent.com/68102477/126087932-bdfda5ec-26ce-490d-ac2b-78c71263da5a.png)

![image](https://user-images.githubusercontent.com/68102477/126087968-a7178d8c-90c4-45a0-8c86-c7c533dfaa07.png)


# CAP Theorem

NoSQL CAP

**Note: Consistency in CAP theorem is not the same as Consistency in RDBMS ACID. CAP consistency talks about data consistency across a cluster of nodes and not on a single server/node**







