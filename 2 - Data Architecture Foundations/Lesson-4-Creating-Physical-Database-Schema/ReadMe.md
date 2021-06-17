# Notes

## Lesson Overview - 3 main topics: 

Database performance, 

DDL and DML (SQL command groups used to create database objects and manipulate the data in the database, 

and common data ingestion methods.

![image](https://user-images.githubusercontent.com/68102477/122392980-bce4ad00-cfb7-11eb-8269-8e38d6b33096.png)

## Build a functioning database

DDL: Data definition language - a set of SQL commands used to create, modify, and delete database objects such as tables, views, and stored procedures

DML: Data manipulation language - a set of SQL commands used to manipulate data inside of a database

## Database Performance

![image](https://user-images.githubusercontent.com/68102477/122393886-b60a6a00-cfb8-11eb-820b-da8fad93ca4d.png)

![image](https://user-images.githubusercontent.com/68102477/122394131-f833ab80-cfb8-11eb-8c7e-6656d39cdafb.png)

### Cache and Indexing

Factors that can harm database performance:

Massive amounts of data
Complex joins
Complex queries
Insufficient hardware
Poor network performance

While many of the aspects affecting database performance are generally out of the hands of data architect, we focused on two common aspects you should be aware of: 
Cache and Indexing. 
Both can improve database performance, and you should be aware of the uses of both technologies.

Cache
Cache is a place to store commonly used data in high-performance memory so the future queries for that data can be run faster.

There are three types of cache:

Internal cache: internal device, limited size, fastest memory, very expensive financially.

External cache: external device, high-speed memory, upgrading the size of memory is more affordable than internal cache.

Enterprise cache: external device, designed to work for multiple databases, very expensive.
Indexing

![image](https://user-images.githubusercontent.com/68102477/122394699-9e7fb100-cfb9-11eb-8489-ecc85287b89f.png)

![image](https://user-images.githubusercontent.com/68102477/122394908-cd962280-cfb9-11eb-95ed-b886104772fb.png)

![image](https://user-images.githubusercontent.com/68102477/122395036-ef8fa500-cfb9-11eb-92a0-ca8802bba943.png)

![image](https://user-images.githubusercontent.com/68102477/122395218-1bab2600-cfba-11eb-8ce2-86a7199ee3eb.png)


