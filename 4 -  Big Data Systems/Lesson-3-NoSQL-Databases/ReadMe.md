
# Lesson Overview

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

# ACID

Achieving ACID transaction for large scale application database which has needs for millions of reads/write per second, the ACID approach prevents relational database to scale beyond a point.

ACID Properties

Atomicity: All or nothing for transaction completion.

Consistency: The database must be consistent no matter what happens 100% of the time

Isolation: No transaction should affect the existence of any other transaction.

Durability: The database should be able to handle all transactions even if there is a failure somewhere during the transaction processing

# CAP Theorem

NoSQL CAP

**Note: Consistency in CAP theorem is not the same as Consistency in RDBMS ACID. CAP consistency talks about data consistency across a cluster of nodes and not on a single server/node**







