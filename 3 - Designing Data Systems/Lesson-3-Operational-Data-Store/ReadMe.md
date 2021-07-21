# [ Operational Data Store ](https://www.jamesserra.com/archive/2015/02/operational-data-store-ods-defined/)

## Lesson Overview

Observed how **ER models** bring together Data Dictionary, Data flows, events, and actions to allow the Data Architect to visualize the data in the enterprise.

Looked at using **Master Data categories** to help us get to a single version of data truth.

Noticed how **Normalization** eliminates redundancies in data

Implemented 2 ways of **moving data from staging to ODS**.

Finally, learnt how to **cleanse data anomalies**


## Definitions


### Operational Data 

Operational Data  is exactly what it sounds like - data that is produced by your organization's day to day operations. Things like customer, inventory, and purchase data fall into this category. This type of data is pretty straightforward and will generally look the same for most organizations. If you want to know the most up to date information on something - you’re using Operational Data! Operational Data Systems support high-volume low-latency access, called Online Transactional Processing tables, or OLTP, where you want to create, read, update, or delete one piece of data at a time.

**An operational data store** (or "ODS") is used for operational reporting and as a source of data for the Enterprise Data Warehouse (EDW).

The [Operational Data Store](https://en.wikipedia.org/wiki/Operational_data_store) is the environment where data from different transactional and operational databases are integrated into a single enterprise model.

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

### [ACID Refresher](https://en.wikipedia.org/wiki/ACID)

ACID provides the principles that database transactions that ensure data doesn’t become corrupt as a result of a failure in the middle of a transaction.


**Atomicity means all of the transaction succeeds or none of it does.**

Transactions are often composed of multiple statements. Atomicity guarantees that each transaction is treated as a single "unit", which either succeeds completely, or fails completely: if any of the statements constituting a transaction fails to complete, the entire transaction fails and the database is left unchanged. An atomic system must guarantee atomicity in each and every situation, including power failures, errors and crashes. A guarantee of atomicity prevents updates to the database occurring only partially, which can cause greater problems than rejecting the whole series outright. As a consequence, the transaction cannot be observed to be in progress by another database client. At one moment in time, it has not yet happened, and at the next it has already occurred in whole (or nothing happened if the transaction was cancelled in progress).

An example of an atomic transaction is a monetary transfer from bank account A to account B. It consists of two operations, withdrawing the money from account A and saving it to account B. Performing these operations in an atomic transaction ensures that the database remains in a consistent state, that is, money is neither debited nor credited if either of those two operations fail.



**Consistency** ensures all data will be consistent, based on business rules, constraints of the business and database (constraints, cascades, triggers). This prevents database corruption by an illegal transaction.

**Isolation** ensures all transactions will occur in isolation, independent of other transactions. A transaction cannot use data from another transaction until it is 100% complete. Transactions are often executed concurrently. Isolation ensures that concurrent execution of transactions leaves the database in the same state that would have been obtained if the transactions were executed sequentially. 

**Durability**  guarantees that once a transaction has been committed, it will remain committed even in the case of a system failure (e.g., power outage or crash). This usually means that completed transactions (or their effects) are recorded in non-volatile memory.


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


## [3 Normal Forms](https://github.com/arpit-mittal-ds/Data-Architect-Udacity-Nanodegree/tree/main/2%20-%20Data%20Architecture%20Foundations/Lesson-2-Data-Normalization)

## ETL data from staging schema into ODS schema

![image](https://user-images.githubusercontent.com/68102477/124905599-8be12080-e029-11eb-9387-5e032369577e.png)

Column mapping
A catalog provides a way to manage column mappings of staging database tables to ODS tables. Without a catalog, this process would be unmanageable. These catalogs are called Metadata tables.
Metadata tables can be used to record the mapping of the source and target columns. They can also handle converting from one data type to another data type
Cleansing
There are two major strategies for cleansing data

Popular ETL tools such as Informatica, Pegasys, and Ab Initio process one record at a time to clean at the rate of few rows at a time.
The other strategy is to load the file into a table first and then process using SQL statements and stored procedures. RDBMS engines are designed and optimized to process set operations most efficiently, the cleansing process can be done at a higher throughput.
Loading and Storage
There are two major techniques for storing data

The first technique is inserting one row at a time by the ETL tool

Popular RDBMS products are highly optimized for massive writes for the purpose of OLTP systems that require millisecond performance. Tens of thousands of records per minute can be written into row-based storage systems. This performance is a result of the way the data is stored on the disk using row-based storage, meaning the entire row is saved together on the disk physically. Oracle and SQL server is also used for DSS, Decision Support Systems, whose purpose is to optimize for faster reads in a multi-user environment.
The second one is to load files into the database and process them with stored procedures.

This strategy uses columnar storage for OLAP to get maximum throughput for loading the data from files. Large search engines use columnar based storage. Some commercial products are built, using this type of storage, where all column values are saved together on the disk. This technique enables faster performance for reads of OLAP systems. Millions of records per minute can be loaded into columnar storage systems.

## Transforming Staging data into multiple columns for ODS


In ODS schema, **create a new table**

We need to transform a 1-column structure into a 5-column structure

Note: This assumes there is a table called UDACITYPROJECT.STAGING.UserDetails that exists and is populated with data.

create table UserDetails (email string, firstname string , lastname string , Phone number, userID number);

To insert JSON data into this table correctly aligned 

insert into UserDetails select usersjson:emailAddress, usersjson:firstname, usersjson:lastname usersjson:Phone, usersjson:userID from UDACITYPROJECT.STAGING.UserDetails.

Login into Snowflake. Review the ERD provided below. This exercise assumes you completed the Staging Area Exercise: Loading small data files where you successfully uploaded the 9 CSV files(Cleaning Testing Exercise Files). For this exercise, you will create relationships in the ODS table with respect to the diagram provided. If needed, those files (called Cleaning_Testing_Files-1) are also located in the resources section of this page.

![image](https://user-images.githubusercontent.com/68102477/121681370-13f10a80-cafe-11eb-9324-ad6762768d14.png)

## Cleanse Data Anomalies

**Examples of Anomalies of Nulls**

A column with possible values - High School, BS, MS, Ph.D., etc. If there is no value entered, we can have a logical null.

Or a value with an empty space. Note: database null is different from an empty space.

Or code values that map 0 for null, 1 for High School, 2 for BS, 3 for MS, 4 for Ph.D.

**Types of Conversions**

Date conversions are common when transferring data back and forth from different countries

Missing values can be replaced with default values

Date of births, Social Security Numbers, Credit card numbers, etc., needs to be validated against a range of appropriate values

Hospitals and insurance companies needing to reconcile hospital bills and insurance payments. This is because of not mapping properly during the conversion process.
Sometimes, data is misaligned into wrong columns when certain delimiters, such as commas, quotes, etc., are used in CSV files.

A dataset in an ODS becomes out of synchronization, so would need to be reprocessed after correcting those values.

**Common Transformations**

Street names can be written Ave or Avenue, Blvd or Boulevard. But, postal departments have a standard convention to follow for the automatic sorting of mail.

Data such as date formats that are different across the world may have to be converted based on the ODS standards.

Sometimes, new columns might have to be created to derive aggregations, such as averages, summaries, and statistical values.

Sensitive information, such as Passwords, credit card numbers, HIPAA (Health Insurance Portability Accountability Act), and PII (Personal Identifiable Information) need to be encoded or encrypted in the ODS. When presenting to customers or users, the same has to be decrypted or masked.

Documents, such as contracts or letters, have to be reformatted when sending to the printers or users.

RESTful APIs (Representation Stateful Transfer) require conversion into a different data structure.

## PII with Masking

![image](https://user-images.githubusercontent.com/68102477/124912082-e2059200-e030-11eb-9b36-e95b1c91915a.png)

[Masking](https://community.snowflake.com/s/article/How-to-Secure-PII-Data-with-Data-Masking)


### Bugs

Bugs in a popular e-commerce system can impact 6,500 orders every minute valued at approximately $300,000. If ODS has a bug in a transformation rule that maps the wrong product code from the stock inventory system to the product code of online orders, as a result, the wrong product is shipped. This transaction triggers a notification to replenish the wrong product.

Exceptions like these are nightmares to any company.



approximately 80% of all projects fail? There are plenty of case studies available to learn from the lessons.
From my 3 decades of experience of working on a couple of dozen projects, I can summarize a couple reasons that I would like you to remember -
OLTP transactional systems should use row-based storage
OLAP analytical ODS systems should use columnar based storage.
Recently, I rescued a data warehouse project, by replacing a row-based storage OLTP based database for the data warehouse with columnar storage OLAP based system. This alone cut down the processing time from 20 hours to under 2 hours.


## Summary

In this lesson, we discussed how the Operational Data Store is the environment where data from different transactional and operational databases are integrated into a single enterprise model

In this lesson:

We saw how ER models bring together Data Dictionary, Data flows, events, and actions to allow the Data Architect to visualize the data in the enterprise

We looked at using master data categories to help us get to a single version of data truth.

We looked at how Normalization eliminates redundancies in data

We looked a 2 ways of actually moving data from staging to ODS.

And finally, we saw how to cleanse data anomalies

## Further Reading

[A good source for education and research to acquire the knowledge and skills is available at “The Data warehouse Institute”](https://tdwi.org/Home.aspx)

[Everything related to data architecture strategies and advancements](https://www.dataversity.net/)

[New vendor products and how they fit in the emerging Data warehouse Architectures](https://a16z.com/2020/10/15/the-emerging-architectures-for-modern-data-infrastructure/)

[Articulated the best practices of Enterprise Data Architecture](https://www.mckinsey.com/business-functions/mckinsey-digital/our-insights/how-to-build-a-data-architecture-to-drive-innovation-today-and-tomorrow)







