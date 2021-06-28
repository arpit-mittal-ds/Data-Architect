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



# NORMAL FORMS

## FIRST NORMAL FORM
![image](https://user-images.githubusercontent.com/68102477/122348066-1637e680-cf8e-11eb-9205-d70e3170255d.png)

![image](https://user-images.githubusercontent.com/68102477/122348092-1f28b800-cf8e-11eb-9fa5-e550e462445f.png)

### No Repeated Groupings
![image](https://user-images.githubusercontent.com/68102477/122348348-6adb6180-cf8e-11eb-98ec-896fe849932f.png)

![image](https://user-images.githubusercontent.com/68102477/121629931-855d9880-cabf-11eb-8d88-8d4a165d9806.png)

Here you see Movies Rented column has multiple values. 

**Rules for first normal form**

Each table **cell should contain a single value.**

Each record needs to be unique - **No Duplicate Records.**

Every table in first normal form must have a **primary key.**

![image](https://user-images.githubusercontent.com/68102477/121629997-a7571b00-cabf-11eb-93ae-51b87d7eb9ac.png)

### First Normal form Solution
![image](https://user-images.githubusercontent.com/68102477/122348430-7fb7f500-cf8e-11eb-9ac4-6aad2a4284e8.png)

1NF: ensure atomic values, no repeated groupings, and no reduplicated rows

## SECOND NORMAL FORM

**To be in second normal form (2NF), all non-key attributes must depend on the entire key. Thus, If the 1NF has a single-attribute primary key, then the table is automatically in 2NF.**

**If a relation has a composite key, all non-key attributes must depend on all components of the key. If you have a table where some non-key attributes don’t depend on all components of the key, break the table up into two or more tables so that — in each of the new tables — all non-key attributes depend on all components of the primary key.**

**To convert a table to 2nd Normal Form - Make New Tables to Eliminate Partial Dependencies**

![image](https://user-images.githubusercontent.com/68102477/121640869-d2e30100-cad1-11eb-9f25-7200210470c2.png)

![image](https://user-images.githubusercontent.com/68102477/121640877-d6768800-cad1-11eb-8f19-7a0eebd2a288.png)

![image](https://user-images.githubusercontent.com/68102477/122349493-a88cba00-cf8f-11eb-8d7e-4cd4d0c4d390.png)

![image](https://user-images.githubusercontent.com/68102477/122349666-cce89680-cf8f-11eb-90c5-a46bc6f37c95.png)

ID is just a surrogate key - actual business key or the data that we have modelled in this table is Name, hence partial dependencies are looked from Name perspective.
Breed and Species are completely separate and do not have any relationship with the Name or Id of the dog, hence moving them to separate table will remove depandant columns and make the tables in second normal form.

![image](https://user-images.githubusercontent.com/68102477/122349434-99a60780-cf8f-11eb-8863-4a0f0767ca33.png)

## THIRD NORMAL FORM

Tables in second normal form are especially vulnerable to some types of modification anomalies — in particular, those that come from transitive dependencies.

**A transitive dependency occurs when one attribute depends on a second attribute, which depends on a third attribute. Deletions in a table with such a dependency can cause unwanted information loss. A relation in third normal form is a relation in second normal form with no transitive dependencies.**

![image](https://user-images.githubusercontent.com/68102477/122350317-762f8c80-cf90-11eb-9ceb-bc4ed057967c.png)

3NF: bring 2NF and remove transitive dependencies (ID, species, and breed)

![image](https://user-images.githubusercontent.com/68102477/122350528-a24b0d80-cf90-11eb-8537-68ab35aab707.png)

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


## [Denormalization](https://en.wikipedia.org/wiki/Denormalization)

is the process improving the read performance of a database at the expense of losing some write performance by adding redundant copies of data.

Drawback of denormalization: u may need to update at multiple places.

JOINS on the database allow for outstanding flexibility but are extremely slow. If you are dealing with heavy reads on your database, you may want to think about de-normalizing your tables. You get your data into normalized form, and then you proceed with denormalization. So, denormalization comes after normalization.

Done to increase performance.

Data redundancy increases.

When read >> write

We will look denormalization in depth while modelling data in Data Warehouses.

![image](https://user-images.githubusercontent.com/68102477/122331535-568c6a00-cf78-11eb-8769-61ba1c20984a.png)


### Example

![image](https://user-images.githubusercontent.com/68102477/122355662-6c5c5800-cf95-11eb-9d0b-e63a87df8380.png)

**1 NF** - have atomic value, no repeated groupings, and no repeated rows

![image](https://user-images.githubusercontent.com/68102477/122355755-8007be80-cf95-11eb-81e7-58cb899e284c.png)

![image](https://user-images.githubusercontent.com/68102477/122356119-d543d000-cf95-11eb-8416-061448b46b3f.png)

![image](https://user-images.githubusercontent.com/68102477/122356181-e4c31900-cf95-11eb-8389-477ac075b032.png)

![image](https://user-images.githubusercontent.com/68102477/122356197-e7be0980-cf95-11eb-9d53-c24eff5dcfab.png)

![image](https://user-images.githubusercontent.com/68102477/122356267-f86e7f80-cf95-11eb-9010-1052f23d7212.png)

![image](https://user-images.githubusercontent.com/68102477/122356298-00c6ba80-cf96-11eb-9f45-b87e3753decf.png)

**2NF: bring 1NF, ensure no duplicates and every column depends on the unique ID**
Assumming customers can have only 1 car.

![image](https://user-images.githubusercontent.com/68102477/122356743-6dda5000-cf96-11eb-8b76-e717c107be64.png)


![image](https://user-images.githubusercontent.com/68102477/122357020-af6afb00-cf96-11eb-9332-8b6decd3f0b7.png)

![image](https://user-images.githubusercontent.com/68102477/122357137-cf022380-cf96-11eb-845d-70ddd1895562.png)

![image](https://user-images.githubusercontent.com/68102477/122357439-1a1c3680-cf97-11eb-8125-5d06c035b615.png)

![image](https://user-images.githubusercontent.com/68102477/122357529-315b2400-cf97-11eb-8b0b-6405391eb35c.png)

Summary
To normalize data to 3NF, follow these steps

Check if tables are in 1NF

Tables should have atomic value, no repeated groupings, and no repeated rows. If any of the 1NF rules is not met, you are not in 1NF. You can create new entities to solve the problem.

Develop a data hierarchy

Hierarchy can help you determine how many entities to start with and how they relate. Based on the hierarchy, you can group data into different entities with attributes.

Make sure all the entities are still in 1NF and also follow 2NF rules

2NF requires that no duplicates and every column depends on the unique ID. In most cases, you can add unique IDs and create new entities to meet the 2NF requirements.

Transform the entities from 2NF to 3NF

You can complete this by checking if there are any transitive dependencies. If there is, you should create another entity to hold the transitive column.

Reminder: After each normal form, don't forget to add relationships to entities so that all the information is linked together.

Note: the goal of normalization is improving performance. Adding too many entities would reduce performance. In the real world, there are many cases where it makes sense to not create many entities although it doesn't meet the normalization rules. The rule of thumb is - if you won't run into the risk of duplicates, then you don’t need to split the data into another entity.

### Exercise: 

![image](https://user-images.githubusercontent.com/68102477/122374485-c2d19280-cfa5-11eb-9d37-a7f0be9808d4.png)

**Follow these steps to normalize to 3NF.**

Build a Hierarchy first, then group data to create basic entities (tables) based on the hierarchy.

Think about the dependencies, duplications, and transitive dependency issues of each column in an entity to decide if a column should be moved out.

Decide the relationships among entities.


## Quick Summary

### 1.  First Normal Form (1NF):

•	Atomic values: each cell contains unique and single values

•	Be able to add data without altering tables	

•	Separate different relations into different tables

•	Keep relationships between tables together with foreign keys


### 2.	Second Normal Form (2NF):

•	Have reached 1NF

•	All columns in the table must rely on the Primary Key

•	If there is a composite PK then no column should depend just on the part of PK…..each column should depend upon the whole PK.

### 3.	Third Normal Form (3NF):

•	Must be in 2nd Normal Form

•	No transitive dependencies

•	Remember, transitive dependencies you are trying to maintain is that to get from A-> C, you want to avoid going through B.

**When to use 3NF:**

When you want to update data, we want to be able to do in just 1 place. We want to avoid updating the table in the Customers Detail table 

Third normal form is the maximum normal form that should be attempted while doing practical data modeling.

Drawback of Normalization - Joins among tables causes queries, which read data from the tables, to run slowly. 


