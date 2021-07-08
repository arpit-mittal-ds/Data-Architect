# Notes

**Relational databases are basically of two types: transactional databases and data warehouse. In this lesson we will look at ER Modelling, used in transactional databases.**

Data Model -- representations of a real object; abstract model created to structure data into a format that can be used to define a real-world object or concept.

![image](https://user-images.githubusercontent.com/68102477/124073096-04be0680-da85-11eb-9435-3fe3aa0bb764.png)


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


# [ERD](https://www.lucidchart.com/pages/er-diagrams)


![image](https://user-images.githubusercontent.com/68102477/122386003-c28ac480-cfb0-11eb-996c-4851274c3e5c.png)

![image](https://user-images.githubusercontent.com/68102477/123614303-8c1e3680-d847-11eb-87c3-6c551ed707fe.png)


## Lucid Chart

<img width="960" alt="lucid" src="https://user-images.githubusercontent.com/68102477/123615507-b6bcbf00-d848-11eb-93d8-3c03c64885e6.png">

![image](https://user-images.githubusercontent.com/68102477/122386121-e5b57400-cfb0-11eb-9e6e-9b4d9cfe9361.png)

## Conceptual ERD

![image](https://user-images.githubusercontent.com/68102477/122386169-f2d26300-cfb0-11eb-8afb-1ffa80fc8dcb.png)

![image](https://user-images.githubusercontent.com/68102477/122386202-fcf46180-cfb0-11eb-957e-bd5a5b525c64.png)

**Follow these steps to build conceptual ERDs:**

Determine the type of database to be designed

Evaluate data (if provided)

Put data into 3NF

Place entities on the diagram

Connect entities with a relationship line

![image](https://user-images.githubusercontent.com/68102477/123623126-72cdb800-d850-11eb-9e5d-f31ee3979961.png)


# KEYS

## [Superkey](https://en.wikipedia.org/wiki/Superkey) and [Candidate key](https://en.wikipedia.org/wiki/Candidate_key)

A superkey is a set of attributes within a table whose values can be used to uniquely identify every record. 

A candidate key is a minimal set of attributes necessary to identify each record; this is also called a minimal superkey. 


## [Primary Key](https://en.wikipedia.org/wiki/Primary_key)

A primary key is a **choice of candidate key (a minimal superkey)**; any other candidate key is an alternate key.

![image](https://user-images.githubusercontent.com/68102477/122386348-244b2e80-cfb1-11eb-894e-abfdd8e700b4.png)


## Composite Key

A key consisting of more than one column is called a composite key. 

## Business Key / Natural Key vs Surrogate Key

A **natural key** is a column or set of columns that **already exist in the table** (e.g. they are attributes of the entity within the data model) and **uniquely identify a record** in the table.  Since these columns are attributes of the entity they obviously have **business meaning**. 

A surrogate key is a system generated (could be GUID, sequence, etc.) value with no business meaning that is used to uniquely identify a record in a table. 

Sometimes natural keys cannot be used to create a unique primary key of the table. This is when the data modeler or architect decides to use surrogate or helping keys for a table in the LDM.

Source System Keys - Do not make any sense!! - A source system can change at any time due to business requirements and your data warehouse should be able to handle these changes without needing any updates. Should have used either IDM generated surrogate key (B2B Keys) or business keys.
Problem with B2B Keys - How do you update them as foreign keys in other tables.

When implementing a data warehouse, you have to use surrogate keys for your dimension and fact tables.

**Natural Key Pros** 

Key values have business meaning and can be used as a search key when querying the table

**Natural Key Cons** 

May need to change/rework key if business requirements change.  For example, if you used SSN for your employee as in the example above and your company expands outside of the United States not all employees would have a SSN so you would have to come up with a new key.

Can't enter record until key value is known.  It's sometimes beneficial for an application to load a placeholder record in one table then load other tables and then come back and update the main table.

**Surrogate Key Pros**

No business logic in key so no changes based on business requirements.

**Surrogate Key Cons**
Key value has no relation to data so technically design breaks 3NF

## Foreign Key
The foreign key is a corresponding column in a table that references a primary key from another table. The PK - FK pair establish the relationship between two or more entities.

**The main rules of the foreign key are:**

It must correspond to PK in another table

It can be Null

PK - FK pair defines the relationships between tables

![image](https://user-images.githubusercontent.com/68102477/122386411-34630e00-cfb1-11eb-8ebe-526193feb9c4.png)


## Logical ERD

### Follow these steps to build logical ERDs:

1. Take the conceptual ERD

2. Identify attributes

3. Identify PK and FK

4. Draw relationships among entities using PK-FK pair

![image](https://user-images.githubusercontent.com/68102477/123718254-0a1f2380-d8c2-11eb-95ee-5f90bea21a5f.png)

In Data Model we call Entities, however in Databse we call them Tables.

![image](https://user-images.githubusercontent.com/68102477/122386492-49d83800-cfb1-11eb-954c-d0c71fabeeff.png)

![image](https://user-images.githubusercontent.com/68102477/122386546-565c9080-cfb1-11eb-959f-e3a568042934.png)

![image](https://user-images.githubusercontent.com/68102477/122386608-65434300-cfb1-11eb-9c6b-8fa448ea7180.png)

![image](https://user-images.githubusercontent.com/68102477/122386666-72f8c880-cfb1-11eb-8e35-e0e1f5498f2c.png)

![image](https://user-images.githubusercontent.com/68102477/122387494-43968b80-cfb2-11eb-96db-e2c22ebce60d.png)

It's common that you need to go back to change your conceptual ERDs once attributes, primary keys, and foreign keys start to be added. Building ERDs is an iterative process so be prepared to go back and forth to make changes.

## Exercise Conceptual And Logical ERD Walkthrough
![image](https://user-images.githubusercontent.com/68102477/123720091-903d6900-d8c6-11eb-927c-31a55fbdff54.png)

sometimes we will not have the data, just the description of data. In this case we can create sample data, get it verified with business stakeholders and then use it to creat the data model.

![image](https://user-images.githubusercontent.com/68102477/123720184-d4306e00-d8c6-11eb-9fbf-4d21b2eeccb4.png)

**Mapping Entity** that maps out the complex relations between drivers, limos, and jobs. Remember, when you encounter a complex relationship, you may consider using a mapping entity as a pivotal table to straighten it.

![image](https://user-images.githubusercontent.com/68102477/123720275-0b9f1a80-d8c7-11eb-93df-bbda42e25e03.png)

![image](https://user-images.githubusercontent.com/68102477/123720210-e5797a80-d8c6-11eb-9582-df1c0f6f3652.png)

![image](https://user-images.githubusercontent.com/68102477/123720236-f1653c80-d8c6-11eb-8f52-b2cc77339b6e.png)

## Exercise #2

![image](https://user-images.githubusercontent.com/68102477/123917323-ff4db700-d9c5-11eb-9f1f-cf962e85031a.png)

### Create Conceptual and Logical ERDs

The Conceptual ERD need only list Entities and how they will relate to each other. This is the highest level ERD and is designed to serve only as a framework to build upon.

The Logical ERD builds upon the conceptual model by adding more details, such as Entities, Attributes, Relationship lines, and Primary and Foreign Keys

## Solution
 
### Step 1  Write business rules on the basis of sample data (in real world take inputs from business stakeholders)

Students will take more than one class and each class will have more than one student -- many to many relationship - mapping table needed.

Teacher will teach more than one class, but one class will be taught by only one teacher.

There will be more than one class for each subject, but only onse subject will be taught in a class.

Each class number correlates to a single subject and a single teacher, -- so while we will need to find a way for these three entities (Class, Subject, and Teacher) to correlate, we don't necessarily need a mapping table. We will use FKs to relate the entities.

### Step 2 Conceptual Data Model based on the entities created using above business rules

![image](https://user-images.githubusercontent.com/68102477/123918124-e8f42b00-d9c6-11eb-9137-8e6b1c451880.png)

While the solution shows Subject and Teacher entities feeding into the Class entity, we would have been entirely correct to have left out the Subject and Teacher Entities all together.

A **Parent-Child entity** is a pairing of 2 or more entities that depend upon each other in some way. Another term for it would be - hierarchical. When dealing with Parent-Child entities, the **Child entities are often not depicted in Conceptual ERDs ** (this is especially true in massive database build-outs).

**So in the example above, the Class entity would be the parent entity, and it would have Child entities Subject and Teacher connected to provide the needed information to fully describe the Class.**

Also, note the complicated relationship between class and student -- one student can take many classes and one class can hold many students, which cause heavy data integrity problem. To solve this, I created a Class list mapping table so there are no duplicates in the Class and the Student table.

![image](https://user-images.githubusercontent.com/68102477/123919227-142b4a00-d9c8-11eb-924b-f94b1227bb8b.png)

### Logical

Unlike the conceptual ERD, this should include all entities in the database, as well as their respective attributes. Primary/Foreign key assignments and relationship lines show the relational logic for the database. Note in the Class List entity, Class ID and Student ID are labeled as FK PK. They are FK because both of them come from other entities. They also serve as a combined PK as they uniquely identify each row when combined.

### Notes to remember

Typically Primary keys are listed first in their table.
Make sure your relationship lines match up between primary and foreign keys. Some ERDs will not have the primary key and foreign marked, so following the relationship lines is how you would read the ERD.
When a complicated relationship is involved among several tables, you should use a mapping table (Class list in this exercise) to solve this problem.

## Cardinality

Cardinality defines the relationship of one entity to another. Crow's Foot notation is one of the notation methods commonly used to denote cardinality in an ERD.

![image](https://user-images.githubusercontent.com/68102477/122387553-5315d480-cfb2-11eb-8a35-78ec4be9b53b.png)

## Crow's Foot

![image](https://user-images.githubusercontent.com/68102477/122387631-6628a480-cfb2-11eb-9304-4e8ef576cb8d.png)

![image](https://user-images.githubusercontent.com/68102477/122387656-6d4fb280-cfb2-11eb-89c6-763d9f5d42fb.png)

![image](https://user-images.githubusercontent.com/68102477/122387673-73459380-cfb2-11eb-955e-e6fcf570025a.png)

![image](https://user-images.githubusercontent.com/68102477/122387706-7c366500-cfb2-11eb-92a3-8b2e15e29c89.png)


![datamodelling](https://user-images.githubusercontent.com/68102477/121794559-98ea3a00-cc4c-11eb-8ef0-06c0f43acfae.png)

### Previous Exercise - Logical ERD with Crow's Foot Notation

![image](https://user-images.githubusercontent.com/68102477/123921007-e8a95f00-d9c9-11eb-8a13-f26ec3979589.png)


### Further Reading - [Article 1](http://www2.cs.uregina.ca/~bernatja/crowsfoot.html) and [Article 2](https://www.lucidchart.com/pages/ER-diagram-symbols-and-meaning)

## ERD Best Practices

Remember an ERD is a professional diagram used by many data professionals. These are not the simple back of the napkin sketches used internally. Many ERD will be circulated to management or used in documentation. Ensure your ERD look professional by following the best practices of ERD design.

**Highlight entity name**

**Ensure proper space among entities**


![image](https://user-images.githubusercontent.com/68102477/123922849-c9abcc80-d9cb-11eb-9c4c-b41d228e6829.png)

![image](https://user-images.githubusercontent.com/68102477/123922906-d7615200-d9cb-11eb-8943-3167395567f3.png)

**Carefully place the relationship lines**

Relationship lines should be b/w PK and FK attributes in logical and physical data models. They should be between entities in conceptual data model.

**Proper labeling of elements (PK and FK)**

![image](https://user-images.githubusercontent.com/68102477/123923190-1b545700-d9cc-11eb-9ec7-b7567964fc20.png)


**Use clear naming practices**

**Ensure cardinality**

# PHYSICAL ERDs

Building out physical ERDs is the last step in ERD development. This is usually done after the DBMS has been decided on, allowing for the correct data types to be selected, although, it could be done beforehand using generic data types.

### The main points to remember here are:

Add data types

Use computer-friendly labels

Add cardinality notation (in our case, Crow's Foot)

Follow ERD best practices

![image](https://user-images.githubusercontent.com/68102477/123720925-8a488780-d8c8-11eb-8830-425a41a8c4d0.png)

![image](https://user-images.githubusercontent.com/68102477/123950489-14870d80-d9e7-11eb-9519-dbd9c3050034.png)

### Previous Exercise - Physical ERD

![image](https://user-images.githubusercontent.com/68102477/123950612-37b1bd00-d9e7-11eb-9502-93a3eca6cb91.png)


## Edge Case: PK-FK Within a Table

![image](https://user-images.githubusercontent.com/68102477/123957007-a6464900-d9ee-11eb-98d1-dbb5f84019f5.png)

Sometimes your foreign key (FK) will reference the Primary Key (PK) of the same table/entity. This is not an uncommon event and is completely acceptable as a database design

![image](https://user-images.githubusercontent.com/68102477/123957021-acd4c080-d9ee-11eb-844f-2ce5565663c3.png)


## Exercise


![image](https://user-images.githubusercontent.com/68102477/123721000-b532db80-d8c8-11eb-9db1-53cac20292fa.png)


Build 3 ERDs (Conceptual, Logical, and Physical) from the data set below. Make sure you follow the ERD best practices.

Note the Start Date and End Date columns in this data. It shows a historical view of players' past teams and positions.

This is a new challenge for you. Try to have fun and be creative with this challenge. And don't cheat by peeking at the solution until you are done.

### Solution

![image](https://user-images.githubusercontent.com/68102477/124072992-dccea300-da84-11eb-8d8e-b81623b3ddf1.png)

![image](https://user-images.githubusercontent.com/68102477/124073006-e0622a00-da84-11eb-90d8-0933519ef2ca.png)

![image](https://user-images.githubusercontent.com/68102477/124073014-e3f5b100-da84-11eb-923d-a94cbead24a7.png)

### Further Reading
[ERD](https://www.smartdraw.com/entity-relationship-diagram/)
