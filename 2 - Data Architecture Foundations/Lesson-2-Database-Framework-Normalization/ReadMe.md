# Notes

![image](https://user-images.githubusercontent.com/68102477/122208382-90ad2b80-cee6-11eb-9778-0e2c15a73b47.png)

Relational databases are basically of two types: transactional databases and data warehouse. In this lesson we will look at ER Modelling, used in transactional databases.



Data Model -- representations of a real object; abstract model created to structure data into a format that can be used to define a real-world object or concept.

Normalization -- Process of organizing data into a structure usable by a relational database

3rd Normal Form-- A common level of data normalization found in transactional relational databases. A data organization method.

Schema -- Physical blueprint of a database design

![image](https://user-images.githubusercontent.com/68102477/122208950-4bd5c480-cee7-11eb-9b72-a0ca63ea1ab2.png)

To build a relational model, we need entities, attributes, and relationships: 
Entities are concepts or items we want to collect data on. An entity has many attributes. The entities would be connected via relationships.

The three most common levels of relational modeling are conceptual, logical, and physical.

The conceptual model focuses solely on entities and how the entities relate

The logical model focuses is on entities, attributes, and relationships

The physical model adds data types, use computer-friendly naming conventions, and address relationships

### Further research - Two articles on data modeling. 

[article 1](https://www.guru99.com/data-modelling-conceptual-logical.html#:~:text=Data%20modeling%20data%20modelling%20is,data%20objects%2C%20and%20the%20rules)

[normalization](https://analytics4all.org/2016/04/02/data-modeling/)


Conceptual Model: A data model level, focused on what are the entities and how do they relate

Logical Model: A data model featuring entities, attributes, and their relationships

Physical Model: A data model featuring entities, attributes, data types, and their relationships. Entity and attribute names should also be computer friendly

## Physical Data Model vs Schema

![image](https://user-images.githubusercontent.com/68102477/122327554-65235300-cf71-11eb-8030-38c16b99036d.png)

![image](https://user-images.githubusercontent.com/68102477/122329887-88e89800-cf75-11eb-90b8-62b122a5373d.png)

![image](https://user-images.githubusercontent.com/68102477/122329947-a158b280-cf75-11eb-9222-367ffceb5a62.png)

The schema is the physical blueprint of the database. This is not the physical model although they look similar. On paper, they may actually look the same. But the schema is what happens when you take the physical data model, pull it from the abstract, and turn it into a physical database.

The most important thing to remember is - schema is created with a single database management system in mind, MS SQL Server, Oracle, Teradata, or in our case PostgreSQL. A physical data model can be applied to any system, a schema belongs to only one system.

![image](https://user-images.githubusercontent.com/68102477/122330343-59865b00-cf76-11eb-9a82-05acdf5e0d9c.png)

Schema has rigid rules:

![image](https://user-images.githubusercontent.com/68102477/122330445-8f2b4400-cf76-11eb-82c9-dc1ee5a28aa3.png)


### Further Reading
Here are some articles on the database schema. The first one is from the LucidChart website (the ERD design tool we will be using later in the course): [article 1](https://www.lucidchart.com/pages/database-diagram/database-schema) and [article 2](https://beginnersbook.com/2015/04/instance-and-schema-in-dbms/)

## Data Normalization

 a method of reorganizing data for use in a relational database. 
 
![image](https://user-images.githubusercontent.com/68102477/122330798-2395a680-cf77-11eb-86d6-a386d3cc8b37.png)

![image](https://user-images.githubusercontent.com/68102477/122330840-34461c80-cf77-11eb-99ee-98e054294b27.png)

![image](https://user-images.githubusercontent.com/68102477/122330908-52ac1800-cf77-11eb-88a6-d800931a39d7.png)

![image](https://user-images.githubusercontent.com/68102477/122331617-791e8300-cf78-11eb-8f1f-10f605c71c72.png)

![image](https://user-images.githubusercontent.com/68102477/122331441-2e047000-cf78-11eb-9ea5-ebc283aeae30.png)

we normalize data to improve writing speed into a database and to maintain data integrity. We denormalize data to improve reading speed, think data warehouses, and reporting structures.

Some benefits of normalized data are:

Increased writing speed
Enforces Data Integrity
Saves memory
Excellent for transaction-based data work - where writing speed is a concern
The downside of normalized data:

Not easy to read
The benefit of denormalized data:

Better reading speed
The downside of denormalized data:

Data is not refreshed often



![image](https://user-images.githubusercontent.com/68102477/122331487-45435d80-cf78-11eb-94eb-53676d3b8467.png)

### Further reading
[article 1](https://www.essentialsql.com/get-ready-to-learn-sql-11-database-third-normal-form-explained-in-simple-english/)

[article 2](https://www.guru99.com/database-normalization.html)

[article 3](https://www.geeksforgeeks.org/third-normal-form-3nf/)


## De-Normalization

![image](https://user-images.githubusercontent.com/68102477/122331535-568c6a00-cf78-11eb-8769-61ba1c20984a.png)

## Normal Forms


