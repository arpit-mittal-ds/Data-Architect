# Data Warehouse

## Lesson Overview

In previous lessons we learnt how to extract data from source systems into staging and then from staging to ODS. Now we will move ahead and create a Data Warehouse

**1. ETL Data from ODS to DWH**

**2. Data Warehouse**

**3. Dimensional Modelling - Facts and Dimensions**

**4. Star and Snowflake Schema**

**5. Reporting** 
Once the data warehouse is up and running, then most importantly, we will write SQL queries for the purpose of reporting. This reporting is vital for decision-makers and leaders to see patterns and intelligent insights.


## 1. ETL Data from ODS to DWH

![image](https://user-images.githubusercontent.com/68102477/126052668-f4015b1f-d3cf-4327-9f9d-5a60bc8fb83f.png)

![image](https://user-images.githubusercontent.com/68102477/126052674-2b40b10a-ff56-4869-afb3-015bea055b0f.png)

**Moving Data from staging to ODS to OLAP - What does this mean?**

After the initial ingestion of data into the staging area, then data is transformed from ODS source, which is an OLTP, into a data warehouse, which is an OLAP.

**How we do it?**

Fast ingestion strategies - Faster ingestion can be done with bulk loading and compression techniques. Every column can be a thread and load in parallel with columnar storage systems, like RedShift or Snowflake.

Transforming the ER model into a Dimensional model

Remember the ODS source is designed with ER models that use normalized rules as we discussed in a previous lesson.


The ultimate goal of the data warehouse is reporting and analysis, so reading data fast is crucial. One of the primary tasks of a data warehouse is to answer aggregates quickly, such as sums, counts, averages, max, and min. Additionally, key performance indicators can be also calculated. This information to leaders and decision-makers is invaluable.


# 2. DATA WAREHOUSE


The complexity and range of information required to support business decisions has increased, and operational database structures were unable to support all of these requirements. Therefore, a new data storage facility, called a data warehouse, developed. The data warehouse extracts its data from operational databases as
well as from external sources, providing a more comprehensive data pool.

All the data that is collected and managed by an organization can be stored in this centrally accessed system. This system ensures a Single Version of Truth for your data and provides all users access to the same data. This system can be used to identify trends, patterns, and outliers in the data. Both standard queries and custom queries can be accessed.

While a data warehouse offers many benefits, one of the key benefits is having a consistent, reliable, dependable central point of access for all the data in an organization

**Formal Definition**

A data warehouse is a database optimized to analyze relational data coming from transactional systems and line of business applications. The data structure, and schema are defined in advance to optimize for fast SQL queries, where the results are typically used for operational reporting and analysis. Data is cleaned, enriched, and transformed so it can act as the “single source of truth” that users can trust.

### The Need for Data Analysis

Analyzing the company data can provide insightful information about short-term tactical evaluations and strategic questions, such as: 

**Are our sales promotions working?**

**What market percentage are we controlling?**

**Are we attracting new customers?**

Note that to answer such question historial data needs to be analysed. Also data from different divisions (such as Marketing, Sales, Billing etc.) and their operational databses needs to be integrated.

Decision makers can no longer wait a couple of days for a report to be generated; they are compelled to make **quick decisions** if they want to **remain competitive**. Every day, TV ads offer low-price warranties, instant price matching, and so on. 
How can companies survive on lower margins and still make a profit? The key is in **having the right data at the right time to support the decision-making process.**

### Business Intelligence

Companies and software vendors first addressed these multilevel decision support needs by creating autonomous applications for particular groups of users, such as those in finance, customer management, human resources, and product support. Applications were also tailored to different industries such as education, retail, health care, and finance. **This approach worked well for some time, but changes in the business world, such as globalization, expanding markets, mergers and acquisitions, increased regulation, and new technologies, called for new ways of integrating and managing decision support across levels, sectors, and geographic locations.** This more comprehensive and integrated decision support framework within organizations became known as **Business Intelligence**, with DW at it's core.

BI is not a product by itself, but a **framework of concepts, practices, tools, and technologies** that help a business better understand its core capabilities, provide snapshots of the company situation, and identify key opportunities to create competitive advantage. In general, **BI provides a framework for:**

• **Collecting and storing** operational data (ODS)

• **Aggregating the operational data** into decision support data (Data Warehouse)

• **Analyzing** decision support data to generate information

• **Presenting** such information to the end user to support business decisions Making business decisions, which in turn generate more data that is collected, stored, and so on (restarting the process)

• **Monitoring** results to evaluate outcomes of the business decisions, which again provides more data to be collected, stored, and so on

• **Predicting** future behaviors and outcomes with a high degree of accuracy (ML)


### Characterstics of a Data Warehouse

**Subject Oriented**

Data warehouse data is organized and summarized by topic, such as sales, marketing, finance, distribution, and transportation. For each topic, the data warehouse contains specific subjects of interest—products, customers, departments, regions, promotions, and so on. This form of data organization is quite different from the more functional or process-oriented organization of typical transaction systems. 

For example, an invoicing system designer concentrates on designing normalized data structures to support the business process by storing invoice components in two tables: INVOICE and INVLINE. In contrast, the data warehouse has a subject orientation. Data warehouse designers focus specifically on the data rather than on the processes that modify the data. (After all, data warehouse data is not subject to numerous real-time data updates!) Therefore, instead of storing an invoice, the data warehouse stores its “sales by product” and “sales by customer” components because decision support activities require the retrieval of sales summaries by product or customer.

**Time Variant**

**Non-Volatile**

**Integrated**
The data warehouse is a centralized, consolidated database that integrates data derived from the entire organization and from multiple sources with diverse formats.


**Primary difference b/w a Data Warehouse and a Data Lake:**

Data Lake can have structured, semi-structured and unstructured data also. In other words, a data lake is a modern data warehouse with unstructured data also.

### Benefits of a DWH:

The data warehouse is used by everyone to find information, so it is **optimized for reads.**

**Historical data** can be used to find clues about customer behavior. For example: Why customers are withdrawing their subscriptions.

Power users can write **ad-hoc custom queries**

Users trust data warehouse reports, which is cleansed and valued as a **Single Version of Truth**

![image](https://user-images.githubusercontent.com/68102477/121469810-8085df80-ca00-11eb-9c97-7d03fa9757e5.png)


The data warehouse supports REPORTING, which is the ultimate goal of the Data Architect. Decision-makers can now dive deep into the data to find hidden trends and other valuable information.


### Why Data Warehousing Matters

**The Value of Data**

Especially in **unpredictable times**, business leaders need access to their data to get up to date, easy to access, and well-organized information to help get insights  - **and navigate based on factual information, and not emotions.**

A data warehouse can provide insightful reporting data from across the entire organization.

**Important decisions can be made such as**

Selling or closing certain business units

Merging some departments to minimize the costs

Acquiring an external company to fill an unseen need

Opening branches to enter into new markets

**Productivity can be increased by understanding the perspective from multiple departmental perspectives. Inefficiencies can be identified and addressed.**

What-if scenarios using clean enterprise data sets can be run to innovate possibilities

Up to date and factual data related to revenue and expenses can be used to manage profits

**Case Study: The impact of COVID**

A data warehouse is even more important in these unprecedented situations:

Several big tech companies crossed the $1 trillion market capitalization recently.

During the period of COVID, a top tech company doubled its market cap to $2 trillion. when many companies are struggling to survive.

Yet, some companies lost revenue. How is that possible?

One of the reasons some companies were able to thrive during COVID time was that their Data Architecture was in place and decision-makers had access to up-to-date data from all aspects of the organization. The Source of Truth data provided reports that allowed them to understand their exact situation, and could plan accordingly.


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

A data mart is a subset of a data warehouse focused on a particular line of business, department, or subject area. Data marts make specific data available to a defined group of users, which allows those users to quickly access critical insights without wasting time searching through an entire data warehouse. 

**The key differences between a data mart vs. a data warehouse include:**

Data marts are smaller subsets of data from a data warehouse.
Data marts are a repository of essential data for a specific subgroup or use case where access can be restricted to that subgroup or use case. Only a few users have access to the entire data warehouse.
Data marts are less expensive and can analyze data faster because they are smaller subsets of the data warehouse that is slower and overloaded.

![image](https://user-images.githubusercontent.com/68102477/125054293-66b3e700-e0e9-11eb-8465-aeeccec4307f.png)


### DataHub
[DataHub](https://en.wikipedia.org/wiki/Data_hub)
A data hub is a collection of data from multiple sources organized for distribution and sharing. Generally this data distribution is in the form of a [hub and spoke architecture.](https://en.wikipedia.org/wiki/Spoke%E2%80%93hub_distribution_paradigm)
The spoke-hub distribution paradigm is a form of transport topology optimization in which traffic planners organize routes as a series of "spokes" that connect outlying points to a central "hub".

A data hub differs from a data warehouse in that it is generally unintegrated and often at different grains. It differs from an operational data store because a data hub does not need to be limited to operational data.

A data hub differs from a data lake by homogenizing data and possibly serving data in multiple desired formats, rather than simply storing it in one place, and by adding other value to the data such as de-duplication, quality, security, and a standardized set of query services. A Data Lake tends to store data in one place for availability, and allow/require the consumer to process or add value to the data.

Data Hubs are ideally the "go-to" place for data within an enterprise, so that many point-to-point connections between callers and data suppliers do not need to be made, and so that the Data Hub organization can negotiate deliverables and schedules with various data enclave teams, rather than being an organizational free-for-all as different teams try to get new services and features from many other teams.



# 3. [DIMENSION MODELLING](https://docs.microsoft.com/en-us/power-bi/guidance/star-schema) - Facts and Dimensions

### [Fact table](https://en.wikipedia.org/wiki/Fact_table)

A fact table consists of the measurements, metrics or facts of a business process. It is located at the center of a star schema or a snowflake schema surrounded by dimension tables. Where multiple fact tables are used, these are arranged as a fact constellation schema. A fact table typically has two types of columns: those that contain facts and those that are a foreign key to dimension tables. The primary key of a fact table is usually a composite key that is made up of all of its foreign keys. 

**Grain** - Fact tables are often defined by their grain. The grain of a fact table represents the most atomic level by which the facts may be defined. 

The grain of a sales fact table might be stated as "sales volume by day by product by store". Each record in this fact table is therefore uniquely defined by a day, product and store. 
Other dimensions might be members of this fact table (such as location/region) but these add nothing to the uniqueness of the fact records. 

**Measure types**

Additive - measures that can be added across any dimension.

Non-additive - measures that cannot be added across any dimension.

Semi-additive - measures that can be added across some dimensions.

A fact table might contain either detail level facts or facts that have been aggregated (fact tables that contain aggregated facts are often instead called summary tables).

Special care must be taken when handling ratios and percentage. One good design rule[1] is to never store percentages or ratios in fact tables but only calculate these in the data access tool. Thus only store the numerator and denominator in the fact table, which then can be aggregated and the aggregated stored values can then be used for calculating the ratio or percentage in the data access tool.

In the real world, it is possible to have a fact table that contains no measures or facts. These tables are called "factless fact tables", or "junction tables".

The factless fact tables may be used for modeling many-to-many relationships or for capturing timestamps of events.

Contain transactional data with every attribute associated with the transaction. Many of these attributes keep repetitive values.

Hierarchical relationships are not represented.

All dimension will have 1 to many relationships either with sub-dimension tables or Fact tables

**Fact types**

Transaction - All transactions, at a grain level, are recorded in the Transaction fact table.

Periodic snapshot - Especially for the business operations team, values such as total sales and count of items by location for every minute(or specified time duration). This can identify trends that allow them to prepare for scaling as needed.

Accumulating snapshot - Recording the start and end times of each activity or workflow. It helps to troubleshoot the slowness of certain time/date ranges.

![image](https://user-images.githubusercontent.com/68102477/125054451-906d0e00-e0e9-11eb-99a0-f27e4ffadd89.png)



### Dimensions

A dimension is a structure that categorizes facts and measures in order to enable users to answer business questions. Commonly used dimensions are people, products, place and time.

The primary functions of dimensions are threefold: to provide filtering, grouping and labelling.

These functions are often described as "slice and dice". A common data warehouse example involves sales as the measure, with customer and product as dimensions. In each sale a customer buys a product. The data can be sliced by removing all customers except for a group under study, and then diced by grouping by product.

### Dimension Table Types
In a typical business data system, common dimensions would be:

Product

Customer

Location

Date

**Rapidly changing Attributes**

The table size increases rapidly when data of certain columns are changing rapidly. This dimension can be refactored by separating the frequently changing attributes into a separate table.

Example: Customer dimension

Customer’s age

Income

Number of lifetime purchases

Rating

Account status

Credit score.

**Slowly changing**

Don’t change frequently. The history of these changes can be kept at the same table.

Example: Customer dimension

Name

Address

Gender

Date of birth

**Junk**

Contains unrelated attributes pulled out of the fact table. A junk dimension is a table with a combination of different and unrelated attributes to avoid a large number of foreign keys in the fact table. All of these types of values can be put into a single junk dimension and their key used a foreign key in the fact table.

Example:

is_qualified

is_on_time

**Inferred**

When Fact data comes before dimension data, process the fact data first by putting NA in the place of the key fields of dimension and then reprocess together with dimension data whenever it is available.


**Conformed**

A date dimension, which has a year, quarter, month, week, day column, can be used for many fact tables.

**Degenerate**

This type of dimension has the primary key as the only attribute. Hence, instead of creating a dimension just with the primary key, moving this primary key to the Fact table eliminates this dimension table.

Example

Insurance claim and policy

**Role-playing**

A single physical dimension that can be referenced multiple times in a fact table. Every reference has its own relationship with the fact table. Each of these columns in a fact 
table, such as order date, shipping date, received date, can play a role with the Date dimension.

Examples

Date dimension has columns like a year, quarter, month, week, day, etc.,

In Fact table, every reference to dimension table can have different relationship such as - order_date, shipping_date, received_date.

**Shrunken**

This is an individual dimension, such as year, quarter, month, week, day, date. If you want the fact table to be optimized for summaries, shrunken dimensions can be used.

Examples

Month is a shrunken dimension of the week

Quarter is a shrunken dimension of the month

**Static**

Not coming from data sources, rather created manually to represent any codes or extracted from external sources.

Examples

Country codes

Currency codes

State codes



# 4. STAR AND SNOWFLAKE SCHEMA


## Star Schema

**Star Schema Representation**

The fact table is related to each dimension table in a many-to-one (M:1) relationship.

In other words, many fact rows are related to each dimension row.

Because the fact table is related to many dimension tables, the primary key of the fact table is a composite primary key.

![image](https://user-images.githubusercontent.com/68102477/122004297-9415b980-cdf7-11eb-838e-2a07921cdc13.png)


### Slowly changing dimensions

Dimensions in data management and data warehousing contain relatively static data about such entities as geographical locations, customers, or products. 

Data captured by Slowly Changing Dimensions (SCDs) change slowly but unpredictably, rather than according to a regular schedule.

[SCD Types Later](https://adatis.co.uk/introduction-to-slowly-changing-dimensions-scd-types/)

### Star vs Snowflake Schema

![image](https://user-images.githubusercontent.com/68102477/126053429-493ffd1e-85b6-40be-ad99-251a7c307374.png)

![image](https://user-images.githubusercontent.com/68102477/126053435-6228b1bf-0170-4c42-b6b9-762ab1a1cbe7.png)

![image](https://user-images.githubusercontent.com/68102477/126053455-36f86988-a50a-4d24-af12-c262909a112e.png)

Both have the same dimensions but Snowflake is extended with furthermore granular dimensions. 

Snowflake can also have more fact tables. 

Snowflake is normalized when it comes to dimensions, meaning it uses sub-dimensions to go deeper. A Star schema has simpler denormalized dimensions.

Star schema dimension tables are not normalized, snowflake schemas dimension tables are normalized.

Snowflake schemas will use less space to store dimension tables but are more complex.

Star schemas will only join the fact table with the dimension tables, leading to simpler, faster SQL queries.

Snowflake schemas have no redundant data, so they're easier to maintain.

Snowflake schemas are good for data warehouses, star schemas are better for data marts with simple relationships.

As you can see below, the Star schema is a smaller schema, with less relationship information. Only the fact table is joined. These are typically used in Data Marts.

![image](https://user-images.githubusercontent.com/68102477/126053342-f9367474-e70d-4fc6-a770-43b5bb04af8a.png)


**Snowflake Schema**

As you can see below in this OLAP model designed with Snowflake. the Snowflake schema is a larger schema than it would be with Star, with far more details about relationships, and is far more normalized. All the radiating tables are called dimensions.

Dimension tables of the Star schema are divided into sub-dimensions in Snowflake

Fact tables are further divided into sub fact tables

**Characterstics of Snowflake Schema**

More complex modeling technique than the Star model.

Less redundant data because of its normalized model

Uses complex joins in writing SQL statements for reading data

In this example, the Sales fact table contains every sale transaction of every product of every store with respect to date. These are typically used in data warehouses.


![image](https://user-images.githubusercontent.com/68102477/126053351-2d1a1eac-cb3c-4c99-90ea-4b153d7d0bc4.png)

### Selecting a Schema (Star vs Snowflake)

Selecting which schema to model the DWH is an important decision a data architect has to take. 

**Example:**

Question: ABC company has 4 transactional systems - product lifecycle database, order entry database, marketing database, HR database. Which schema do you recommend to build a data warehouse and explain the reasons?

Answer: If the database size is in 100s of GB to TBs, and there isn't much time to implement a large data warehouse - when a particular department wants to have a dedicated reporting system ASAP, then Star schema is preferable.

It is complex and time taking to implement an enterprise wide reporting system. If you have enough budgets and time to implement an enterprise reporting system, Snowflake suits best to model the complex relationships.

**Exercise - Create a simple Dimensional Model using following ER-Model**

![image](https://user-images.githubusercontent.com/68102477/126053767-00eb0047-1085-4443-8d31-b6fb4dd68bc6.png)

A multinational company manufactures several brands of cars and sells them across the world. Several countries have manufacturing locations to create specific parts of the brands. Some parts are outsourced to supplier companies. You want to represent the relationships that exist as described in the ER model above. Create the corresponding Dimensional Model. Use Lucidchart or a similar diagram creation tool to model this.

**Solution**

![image](https://user-images.githubusercontent.com/68102477/126053760-8faf5acd-f9b5-48a0-8af0-950f7d26ce02.png)


### Exercise:

![image](https://user-images.githubusercontent.com/68102477/126054200-1ec69819-e7b0-48f4-8c4a-9aa7444d0774.png)

Using the Star schema model above, load the data into Snowflake DWH schema from ODS schema.

**Solution**

**Step 1: Create Schema**

CREATE SCHEMA DWH;

**Step 2: DIMEMPLOYEE**

create table DIMEMPLOYEE ( EMPLOYEE_ID NUMBER, FIRST_NAME STRING, LAST_NAME STRING );

insert into DIMEMPLOYEE select distinct EMPLOYEE_ID, FIRST_NAME, LAST_NAME from ods.EMPLOYEE;

**Step 3: Create Table DIMPROTOCOL**

create table DIMPROTOCOL( STEP_ID NUMBER, STEP_NAME string );

insert into DIMPROTOCOL select distinct STEP_ID, STEP_NAME from ods.PROTOCOL;

**Step 4 : Create Table DIMHIGHTOUCHAREAS**

create table DIMHIGHTOUCHAREAS( SPOT_ID NUMBER, HIGH_TOUCH_AREA string );

insert into DIMHIGHTOUCHAREAS select distinct SPOT_ID, HIGH_TOUCH_AREA from ods.HIGHTOUCHAREAS;

**Step 5 : Create Table DIMFREQUENCY**

create table DIMFREQUENCY( FREQUENCY_ID NUMBER, FREQUENCY NUMBER );

insert into DIMFREQUENCY select distinct FREQUENCY_ID, FREQUENCY from ods.FREQUENCY;

**Step 6: Create Table DIMROOM**

create table DIMROOOM( ROOM_ID NUMBER, ROOM_NAME STRING );

insert into DIMROOOM select distinct ROOM_ID, ROOM_NAME from ods.ROOMS;

**Step 7 : Create Table DIMFLOORS**

create table DIMFLOORS( FLOOR_ID number, FLOOR_NAME STRING );

insert into DIMFLOORS select distinct FLOOR_ID, FLOOR_NAME from ods.FLOORS;

**Step 8 : Create Table DIMFACILITY**

create table DIMFACILITY ( BUILDING_ID NUMBER, BUILDING_NAME STRING );

insert into DIMFACILITY select distinct BUILDING_ID, BUILDING_NAME from ods.FACILITY;

**Step 9 : Create Table DIMCOMPLEX**

create table DIMCOMPLEX ( COMPLEX_ID STRING, COMPLEX_NAME STRING );

insert into DIMCOMPLEX select distinct COMPLEX_ID, COMPLEX_NAME from ods.COMPLEX;

**Step 10 : Create Table FACTTABLE**

create table facttable_CleaningSchedule (   
TRANSACTION_ID NUMBER,    
EMPLOYEE_ID NUMBER,   
FIRST_NAME STRING,   
LAST_NAME STRING,   
STEP_ID NUMBER,   
STEP_NAME string,   
SPOT_ID NUMBER,   
HIGH_TOUCH_AREA string,   
FREQUENCY_ID NUMBER,   
FREQUENCY NUMBER,   
ROOM_ID NUMBER,   
ROOM_NAME STRING,   
FLOOR_ID number,   
FLOOR_NAME STRING,   
BUILDING_ID NUMBER,   
BUILDING_NAME STRING,   
COMPLEX_ID STRING,   
COMPLEX_NAME STRING,   
SQFT STRING,   
TOTAL_AREA STRING,   
CLEANED_AREA STRING,   
TEST_VALUE NUMBER,   
EFFICIENCY NUMBER,   
CLEANED_ON STRING,   

constraint fk_TRANSACTION_ID foreign key (TRANSACTION_ID)
references ods.CLEANINGSCHEDULE (TRANSACTION_ID),   
constraint fk_EMPLOYEE_id foreign key (EMPLOYEE_id)
references ods.EMPLOYEE (EMPLOYEE_id),   
constraint fk_SPOT_id foreign key (SPOT_id)
references ods.HIGHTOUCHAREAS (SPOT_id),   
constraint fk_FREQUENCY_id foreign key (FREQUENCY_id)
references ods.FREQUENCY(FREQUENCY_id),   
constraint fk_ROOM_id foreign key (ROOM_id)
references ods.ROOMS (ROOM_id),   
constraint fk_FLOOR_id foreign key (FLOOR_id)
references ods.FLOORS (FLOOR_id),   
constraint fk_BUILDING_id foreign key (BUILDING_id)
references ods.FACILITY (BUILDING_id),   
constraint fk_COMPLEX_id foreign key (COMPLEX_id)
references ods.COMPLEX (COMPLEX_id)
);



# 5.  REPORTING

One of the main goals of any data system is to use it to analyze data, help identify trends and patterns, support the decision-making of the executive teams, and provide insights for strategic planning. Once your data has been collected and stored, it can now be used for reporting. 

**Type of queries on DW**

Repetitive and expected

Unique queries

One of the key things to look out for is Improper testing of queries or badly written queries. A badly structured query may slow down or bring down the database, so testing of all known and common queries is vital. Working with users with unique queries to ensure the query is correctly entered can reduce risk.


### Case Study

There are over 200 stock exchanges in the world sending the stock market tick data at a rate of over a million messages per second. 

Companies, like Reuters and Bloomberg, buy this data, clean and aggregate it into streams to sell to customers. 

Customers subscribe to these feeds to buy and sell the stocks. When the entire database of all departments of the organization is available, it is possible to find some new opportunities for revenue generation.

![image](https://user-images.githubusercontent.com/68102477/126054324-068ef214-ae81-443b-8c91-6e46a2da95ba.png)

### Analytics

Executive and decision-makers will query the system to generate reports and extract data, for purposes of analyisis. Let's use the COVID19 situation as an example to understand the difference between the three main types of analytics.

![image](https://user-images.githubusercontent.com/68102477/126054345-bc8930ad-390d-493b-992e-15ec401f4dd4.png)



**Descriptive analytics:** 

You might have seen the red, yellow, and green color-coded maps to explain how covid is spreading across the globe. This is done by running statistics on the tested and admitted patient's data.

**Predictive analytics:**

Historical data is fed into a machine learning model that considers key trends and patterns. The model is then applied to current data to predict what will happen next. Back in our COVID example, predictive analytics may forecast a surge in patients admitted to the ER in the next several weeks. Based on patterns in the data, the illness is spreading at a rapid rate.

**Prescriptive analytics:**

Takes predictive data to the next level. Now that you have an idea of what will likely happen in the future, what should you do? It suggests various courses of action and outlines what the potential implications would be for each. Now that you know the COVID is spreading, per your ML models, the prescriptive analytics tool may suggest that you increase the number of staff on hand to adequately treat the influx of patients.



### Exercise: Writing SQL that Correlates Business Intelligence

ABC company has built a DWH using 4 transactional systems - product lifecycle database, order entry database, marketing database, HR database. 

The product table has a list of products - Mobile phone, phone case, wireless charger and Bluetooth earbuds. 

Customer(CustomerID, CustomerName) and Product(ProductID, ProductName) are two dimensions related to a Fact_table(CustomerID, ProductID, bill, bill date) using the Star schema. 

The Order database has a list of customers who bought some of these products. Marketing dept wants to inform the customers, who bought at least $1000 worth of the products last month, giving 20% discounts to appreciate their business.

**Write a sudo SQL code to list customers who qualify for the discount.**

select c.customerName, sum(f.bill) from Customers c, Fact_table f where c.customerID = f.customerID and ((f.billdate between currentDate and (currentDate -30))  group by c.customerID having sum(f.bill) >= 1000;


**Question 2:**

ABC company has built a DWH using 4 transactional systems - product lifecycle database, order entry database, marketing database, HR database. It is making $100M with 10% profitability. In the response box below, respond to the following 2 questions.

How can you develop the DWH to uncover hidden patterns?

Explain what dimensions and other transactional systems are required to increase profitability.

**Answer**

Using Star schema, create Customer, Product, MarketingCampaigns, Location, Employee dimensions that are related to the Fact table, which has all the transactions with various marketing campaigns. You can help business users to identify the opportunities by querying the DWH to find hidden patterns to upsell and cross sell to the existing customers. You can also help business users to show how much revenue and profitability increased due to various marketing campaigns.

## Challenges in building a data warehouse

While upgrading the software, you will need to address deprecated features

Careful planning and coordination required during migration.

Performance problems due to growing data processing without increasing CPU capacity

Most data warehouse projects are a multi-year effort

Moving targets and priorities of other teams

Shifting schedules because of those moving targets

![image](https://user-images.githubusercontent.com/68102477/126059181-24a8adba-a0db-47c0-ba9f-f4b3c2424eb8.png)


## Data Architecture Diagramming

A good data architecture diagram is the most important artifact to start any project. We have studied numerous artifacts, diagrams, and models that can be used.

**Steps to Data Architecture**

Identifying data sources

Moving the data into the staging area to organize

Create an ER model in ODS to transform the data from the staging area

Build ODS to query snapshot data sets

Good schemas help build a data warehouse that provides reports on data
  
 
### Importance of data architecture for an organization

A business organization is very similar to a brain dead without having a data warehouse system.

Just having the data warehouse is not enough. You need some kind of Business Intelligence tools like Business Objects and MicroStrategy for reporting, analytics tools like Power 
BI and Tableau to maximize your analytics.

**Cost Challenges**

Cloud-native data warehouse software platforms like RedShift and Snowflake, which are bringing down the cost of data warehouse projects without having to be concerned about software upgrades and scaling the hardware up or down depending upon the demand.

**Why Data Science?**

Data science requires enterprise data into which we try to figure out the intricate and hidden relationships of integrated data sets. A.I. and M.L are innovative and powerful tools that can help organizations sift through their data.

Artificial Intelligence and Machine Learning

These are both huge topics and are beyond the scope of this nanodegree, but are deeply connected with data architecture, as they are incredible tools when dealing with large 
data sets. I encourage you to explore several nanodegree on the Udacity platform related to these topics.

As you explore AI and ML, keep in mind a common mistake organizations make is moving mountains of data to the process where the ML model is running; this can be very expensive and also time-consuming. Try to determine if the ML model should be brought to the data - much faster and less expensive. Your Data Architecture research can help you lead that conversation.

