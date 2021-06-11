# Operational Data Store 

## Lesson Overview

Observed how ER models bring together Data Dictionary, Data flows, events, and actions to allow the Data Architect to visualize the data in the enterprise.

Looked at using master data categories to help us get to a single version of data truth.

Noticed how Normalization eliminates redundancies in data

Implemented 2 ways of moving data from staging to ODS.

Finally, learnt how to cleanse data anomalies


## Definitions


### Operational Data 

Operational Data  is exactly what it sounds like - data that is produced by your organization's day to day operations. Things like customer, inventory, and purchase data fall into this category. This type of data is pretty straightforward and will generally look the same for most organizations. If you want to know the most up to date information on something - you’re using Operational Data! Operational Data Systems support high-volume low-latency access, called Online Transactional Processing tables, or OLTP, where you want to create, read, update, or delete one piece of data at a time.

**An operational data store** (or "ODS") is used for operational reporting and as a source of data for the Enterprise Data Warehouse (EDW).

The [Operational Data Store](https://en.wikipedia.org/wiki/Operational_data_store) is the environment where data from different transactional and operational databases are integrated into a single enterprise model.

 ODS = IDM (Integrated Data Model)
 
### EDW

[Enterprise Data warehouse or "EDW"](https://en.wikipedia.org/wiki/Data_warehouse)
is a system used for reporting and data analysis and is considered a core component of business intelligence. DWs are central repositories of integrated data from one or more disparate sources. They store current and historical data in one single place that are used for creating analytical reports for workers throughout the enterprise.

The data stored in the warehouse is uploaded from the operational systems (such as marketing or sales). The data may pass through an operational data store and may require data cleansing[2] for additional operations to ensure data quality before it is used in the DW for reporting.

Extract, transform, load (ETL) and extract, load, transform (ELT) are the two main approaches used to build a data warehouse system.

### DataLake

[DataLake](https://en.wikipedia.org/wiki/Data_lake)
A data lake is a system or repository of data stored in its natural/raw format.
Looks like our Staging layer is a Data Lake

### DataMarts


### DataHub
[DataHub](https://en.wikipedia.org/wiki/Data_hub)
A data hub is a collection of data from multiple sources organized for distribution and sharing. Generally this data distribution is in the form of a [hub and spoke architecture.](https://en.wikipedia.org/wiki/Spoke%E2%80%93hub_distribution_paradigm)
The spoke-hub distribution paradigm is a form of transport topology optimization in which traffic planners organize routes as a series of "spokes" that connect outlying points to a central "hub".

A data hub differs from a data warehouse in that it is generally unintegrated and often at different grains. It differs from an operational data store because a data hub does not need to be limited to operational data.

A data hub differs from a data lake by homogenizing data and possibly serving data in multiple desired formats, rather than simply storing it in one place, and by adding other value to the data such as de-duplication, quality, security, and a standardized set of query services. A Data Lake tends to store data in one place for availability, and allow/require the consumer to process or add value to the data.

Data Hubs are ideally the "go-to" place for data within an enterprise, so that many point-to-point connections between callers and data suppliers do not need to be made, and so that the Data Hub organization can negotiate deliverables and schedules with various data enclave teams, rather than being an organizational free-for-all as different teams try to get new services and features from many other teams.


![image](https://user-images.githubusercontent.com/68102477/121339862-4239e300-c962-11eb-9896-9dfeb00c17f1.png)

![image](https://user-images.githubusercontent.com/68102477/121339896-4ebe3b80-c962-11eb-804e-2cd7416fe5dc.png)

## What is an Operational Data Store
Once the data sources have been identified and data collected, the ODS layer handles the integration of all the source data sets into a coherent relational database

(O)perational (D)ata (S)tore

### Has two main functions:

1. to keep a clean copy of data sets coming from multiple sources

2. to keep this as a source for the data warehouse.

### What happens during the ODS stage?

While staging functions as a data acquisition layer from source systems, the ODS layer actually **handles the integration** of all the source data sets into a coherent relational database

Because the data originates from multiple sources, the integration often involves cleaning, resolving redundancy, and checking against business rules for integrity.

This enables end-users to have operational reporting functionality. For example… If Walmart operations want to know which products are running out of shelves and refill the stock, they need to run queries against the ODS.


![image](https://user-images.githubusercontent.com/68102477/121455223-6f7ca480-c9e7-11eb-9344-cbc5807e26fc.png)

### ODS and Data Warehousing

The data in ODS is transactional, which means it is rapidly updating; it will have less quantity versus a data warehouse which tends to be for larger quantities less frequently updated

Updated ODS data can replace any previous version of data in near real-time depending upon the frequency of updates

## Why does ODS Matter?

**Decision Making with Data**

In this day and age, the survival of any business depends upon making fast decisions but based on **recent** factual data and then executing business strategies before the competition does. Not only do these businesses thrive but they also create brand new opportunities

Business leaders want to see **integrated data** in the context of customers, products, sales, revenues, profits, etc., 

For example, in the early years of one of the largest e-commerce sites in the world, it was losing money in their e-commerce business, but started making money when they started their cloud business. The share prices started soaring when they began reporting the profitability of all businesses put together.

ODS is an enterprise database to provide a single version of truth.

### Create an Entity-Relational Model

![image](https://user-images.githubusercontent.com/68102477/121460874-13b71900-c9f1-11eb-8a6b-7fa2550b453c.png)

![image](https://user-images.githubusercontent.com/68102477/121460958-3c3f1300-c9f1-11eb-82ab-e374b818f666.png)

**ER Model** is used to model ODS systems by identifying and defining relationships between business data and business functions. What types of relationships can be presented?
One to One
One to many
Many to One

The dimension model is used for data warehouses, not for ODS. The ER model is used for ODS.

All ER models follow Normalization rules, which enforces maintaining unique records and proper relationships. This ensures data integrity

Since OLTP databases deal with transactional data, these system requires the implementation of ACID properties- Atomicity, Consistency, Isolation, and Durability.

![image](https://user-images.githubusercontent.com/68102477/121461366-0baba900-c9f2-11eb-865f-7bb3934aa089.png)

### ACID Refresher

ACID provides the principles that database transactions that ensure data doesn’t become corrupt as a result of a failure in the middle of a transaction.

ACID Definition

Atomicity means all of the transaction succeeds or none of it does.

Consistency ensures all data will be consistent, based on business rules, constraints of the business, and database

Isolation ensures all transactions will occur in isolation, independent of other transactions. A transaction cannot use data from another transaction until it is 100% complete

Durability means that, once a transaction is committed, it is a permanent part of the data system.

## Categorize Enterprise Data Sets (Types of Data Sets)

### Master Data

Copies of the same data coming in from multiple sources are called Master data. For example, customer, product, vendor, supplier, business partners, and contracts.

Initially, each business unit creates these data sets in their own ER models, data structures, formats, data types, etc., Multiple versions of these data sets exist with multiple independent systems mushroomed across the organization. 

Pulling all these data sets into a commonplace, like ODS, it is easier to cleanse data anomalies, such as short first names vs long, addresses, etc.,

If Master data is in a standardized structure, format, data types, etc., others can subscribe and use it in their applications or can make a local copy of their own without permission to alter it.

Without control over who gets to update these data sets, the data gets out of sync quickly. Hence data governance is important to safeguard the right to update these Master data assets.

![image](https://user-images.githubusercontent.com/68102477/121464002-6a732180-c9f6-11eb-83ff-892ee80502a8.png)


### Transactional

**Example:**

Top eCommerce website is processing 6,500 transactions per minute. This system is in sync with another OLTP system that keeps track of the inventory of every product that they carry in every warehouse.

Both OLTP systems need to push their transactions to an ODS in real-time to check if there is inventory available for all these online orders as they are coming in continuously.

If the stock is running low, ODS notifies another OLTP system to send messages to the product manufacturers to replenish the products.

![image](https://user-images.githubusercontent.com/68102477/121464082-8e366780-c9f6-11eb-8fc6-e7613043fd30.png)

### Reference Data

**Reference data is used, by ODS, for read-only purpose but owned, updated, controlled, and managed by external organizations.**

**Examples**

ISO, International Standards Organization, is an organization that works with 165 national standard bodies related to almost every industry

Each country and state governments create regulatory standards to comply with environmental, food, labor, immigration, and pharmaceutical standards.

Industries have their own standards, college admissions use standards, such as (SAT, ACT, AP, Toefl, GRE), auto industry uses safety standards, building industry uses building codes, etc.

Suppliers have their own standards to take orders and ship the material through ships, air cargo, trains, and trucks.

Every company has its own way of representing internal codes for products, contracts, purchases, and invoices.

Weather data is generated and distributed by a national organization.

![image](https://user-images.githubusercontent.com/68102477/121464496-4e23b480-c9f7-11eb-9044-0643a270a938.png)


### Metadata

Metadata is data about data. In the context of ODS, metadata tables are required to keep track of sources, tables, columns, and transformation rules.

Developers are mostly creators of metadata to process the transformation of data and information about how the processes will behave in a production system.

Administrators need to know about the status of processes in the ODS production systems and subsystems.

![image](https://user-images.githubusercontent.com/68102477/121464589-78757200-c9f7-11eb-9975-1fb35abe045b.png)


## Data Normalization

[Database Normalization](https://en.wikipedia.org/wiki/Database_normalization)
Database normalization is the process of structuring a database, usually a relational database, in accordance with a series of so-called **normal forms** in order to **reduce data redundancy** and **improve data integrity**. 

Normalization divides larger tables into smaller tables and links them using relationships. 

## Objectives of Normalization - Reduction of Anomalies and Data Redundancy

When an attempt is made to modify (update, insert into, or delete from) a relation, the following undesirable side-effects may arise in relations that have not been sufficiently normalized:

### Update anomaly. 

![image](https://user-images.githubusercontent.com/68102477/121621215-17a97080-caaf-11eb-8b57-ee1325a24d93.png)

The same information can be expressed on multiple rows; therefore updates to the relation may result in logical inconsistencies. For example, each record in an "Employees' Skills" relation might contain an Employee ID, Employee Address, and Skill; thus a change of address for a particular employee may need to be applied to multiple records (one for each skill). If the update is only partially successful – the employee's address is updated on some records but not others – then the relation is left in an inconsistent state. Specifically, the relation provides conflicting answers to the question of what this particular employee's address is. This phenomenon is known as an update anomaly.

### Insertion Anomaly

![image](https://user-images.githubusercontent.com/68102477/121621333-50e1e080-caaf-11eb-87ee-87a39f9a3ba5.png)

There are circumstances in which certain facts cannot be recorded at all. For example, each record in a "Faculty and Their Courses" relation might contain a Faculty ID, Faculty Name, Faculty Hire Date, and Course Code. Therefore, we can record the details of any faculty member who teaches at least one course, but we cannot record a newly hired faculty member who has not yet been assigned to teach any courses, except by setting the Course Code to null. This phenomenon is known as an insertion anomaly.

### Deletion Anomaly

![image](https://user-images.githubusercontent.com/68102477/121621409-740c9000-caaf-11eb-9888-fb25e6a55317.png)

Under certain circumstances, deletion of data representing certain facts necessitates deletion of data representing completely different facts. The "Faculty and Their Courses" relation described in the previous example suffers from this type of anomaly, for if a faculty member temporarily ceases to be assigned to any courses, we must delete the last of the records on which that faculty member appears, effectively also deleting the faculty member, unless we set the Course Code to null. This phenomenon is known as a deletion anomaly.

## [Functional Dependency](https://en.wikipedia.org/wiki/Functional_dependency)

X is said to functionally determine Y (written X → Y) if and only if each X value in R is associated with precisely one Y value in R; R is then said to satisfy the functional dependency X → Y. 

**Example**

| Employee ID   | Employee name | Department ID  | Department name |
| ------------- |:-------------:| --------------:| ---------------:|
|      0001     | Arpit Mittal  |       1        | Human Resources |
|      0002     | Sasi          |       2        | Marketing       |
|      0003     | John          |       3        | Sales           |

	
An employee can only be a member of one department.

Employee ID → Employee Name
Employee ID → Department ID
Department ID → Department Name

## Keys 

### [Superkey](https://en.wikipedia.org/wiki/Superkey)
A superkey of a relation schema is a set of attributes such that each instance relation of the relation schema does not have two distinct tuples with the same values for these attributes. It defines a functional dependency constraint from the superkey to all the attributes of the relation schema.


### [Candidate key](https://en.wikipedia.org/wiki/Candidate_key)
a candidate key, or simply a key, of a relation schema is a minimal superkey of the relation schema.[1] In other words, it is a set of attributes such that each instance relation of the relation schema does not have two distinct tuples with the same values for these attributes (which means that the set of attributes is a superkey) and there is no proper subset of these attributes which is a superkey of the relation schema (which means that the set is minimal). It defines a functional dependency constraint from the candidate key to all the attributes of the relation schema.

In the relational model of databases, a primary key is a specific choice of a minimal set of attributes (columns) that uniquely specify a tuple (row) in a relation (table).[a][1] Informally, a primary key is "which attributes identify a record", and in simple cases are simply a single attribute: a unique id. More formally, a primary key is a choice of candidate key (a minimal superkey); any other candidate key is an alternate key.


