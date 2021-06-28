# Notes

**Relational databases are basically of two types: transactional databases and data warehouse. In this lesson we will look at ER Modelling, used in transactional databases.**

Data Model -- representations of a real object; abstract model created to structure data into a format that can be used to define a real-world object or concept.

![image](https://user-images.githubusercontent.com/68102477/122385951-b56dd580-cfb0-11eb-9b73-8b3bb3044a95.png)

![image](https://user-images.githubusercontent.com/68102477/122386003-c28ac480-cfb0-11eb-996c-4851274c3e5c.png)

## Lucid Chart

![image](https://user-images.githubusercontent.com/68102477/122386037-ccacc300-cfb0-11eb-85e0-a13d3517f5ad.png)

![image](https://user-images.githubusercontent.com/68102477/122386067-d6362b00-cfb0-11eb-8216-487b24239eae.png)

![image](https://user-images.githubusercontent.com/68102477/122386121-e5b57400-cfb0-11eb-9e6e-9b4d9cfe9361.png)

## Conceptual ERD

![image](https://user-images.githubusercontent.com/68102477/122386169-f2d26300-cfb0-11eb-8afb-1ffa80fc8dcb.png)

![image](https://user-images.githubusercontent.com/68102477/122386202-fcf46180-cfb0-11eb-957e-bd5a5b525c64.png)

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

![image](https://user-images.githubusercontent.com/68102477/122386411-34630e00-cfb1-11eb-8ebe-526193feb9c4.png)

## Logical ERD

![image](https://user-images.githubusercontent.com/68102477/122386492-49d83800-cfb1-11eb-954c-d0c71fabeeff.png)

![image](https://user-images.githubusercontent.com/68102477/122386546-565c9080-cfb1-11eb-959f-e3a568042934.png)

![image](https://user-images.githubusercontent.com/68102477/122386608-65434300-cfb1-11eb-9c6b-8fa448ea7180.png)

![image](https://user-images.githubusercontent.com/68102477/122386666-72f8c880-cfb1-11eb-8e35-e0e1f5498f2c.png)

![image](https://user-images.githubusercontent.com/68102477/122387494-43968b80-cfb2-11eb-96db-e2c22ebce60d.png)

## Cardinality

![image](https://user-images.githubusercontent.com/68102477/122387553-5315d480-cfb2-11eb-8a35-78ec4be9b53b.png)

### Crow's Foot

![image](https://user-images.githubusercontent.com/68102477/122387631-6628a480-cfb2-11eb-9304-4e8ef576cb8d.png)

![image](https://user-images.githubusercontent.com/68102477/122387656-6d4fb280-cfb2-11eb-89c6-763d9f5d42fb.png)

![image](https://user-images.githubusercontent.com/68102477/122387673-73459380-cfb2-11eb-955e-e6fcf570025a.png)

![image](https://user-images.githubusercontent.com/68102477/122387706-7c366500-cfb2-11eb-92a3-8b2e15e29c89.png)

