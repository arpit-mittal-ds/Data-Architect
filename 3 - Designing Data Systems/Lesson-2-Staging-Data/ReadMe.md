# Staging Data

## Lesson Overview

What staging data is and why it is vital in data architecture

Why a single schema for each source is crucial

The importance of scheduling when data is ingested

How high-level metatables help manage data easier

Why collecting data involves bringing data into a common format and then planning how it all comes together

## Staging
Staging is similar to the preparation of bringing the material to the building site in order to build a building.

The staging area is where things get prepped before going into the 'big system'. It is a vital step because clean data in, clean data out. That philosophy helps ensure data integrity.

### Understand

What the data is

Where it is coming from

How much data is there

What file formats are involved and are conversions needed

Is data being pushed from or pulled into the system ?

Schedule of the incoming files.

How often is the data coming in

When are they coming

### Validate

Quality of data for transformation or cleansing

Handling of failures so integrity accuracy can be maintained 

Handling of change data capture, so integrity accuracy can be maintained


## The first question to ask: What do we know about the data?
Understanding everything we can about the data is a vital first step. Here are several important considerations:

**Location**

Data sources can be within or outside the organization

**Data type**

Spreadsheets

Desktop databases

OLTP

Feeds

Enterprise systems

External systems

IoT devices

log files

**Size**

Data volumes can be from KB to MB to GB to TB to PB and even further

Local files and databases are megabytes in size

Department level transaction systems can be gigabytes in size

Enterprise ERP systems can be terabytes in size

Big Data system, such as email, can be exabytes and petabytes

**Frequency**

Real-time such as Wall Street trading

Intraday such as car sales

End-of-day such as banking, retail, and fast food

Weekly such as climate data archiving


![image](https://user-images.githubusercontent.com/68102477/120993208-a9229500-c7c6-11eb-86bb-a05b924289f9.png)


**One interesting factoid: Many organizations are moving to daily and intraday simply because it is possible, even though there may not be a business need.**

## One Schema per Soursce System

### What is a schema?
A database table that provides a logical grouping of data tables using ER, or Entity-Relationship, models.

How many schemas are there?
Best practice suggests using a one-source, one-schema philosophy for any sources. Why?

You can easily find out anything you need to know about any data source in the entire system
In times of failure, changes can be easily localized or compartmentalized, with error impact to other parts of the system reduced
It is much faster to react to source information updates & changes


![image](https://user-images.githubusercontent.com/68102477/121105208-fe9e8680-c846-11eb-84a8-5ee29a368c99.png)

![image](https://user-images.githubusercontent.com/68102477/121105283-28f04400-c847-11eb-8925-a64847321eae.png)

![image](https://user-images.githubusercontent.com/68102477/121105331-43c2b880-c847-11eb-9c8a-4aaf46268e31.png)

## Creating Database and Schemas in Snowflake

![image](https://user-images.githubusercontent.com/68102477/121312371-a780da80-c948-11eb-811d-c37e0c628b7c.png)

Loading data into the table

![image](https://user-images.githubusercontent.com/68102477/121312331-9c2daf00-c948-11eb-8bd7-ecdaceb5a367.png)


![image](https://user-images.githubusercontent.com/68102477/121313028-56251b00-c949-11eb-8bb4-49819bb3641d.png)

Now depending on what format the file is in you can select that format.

### Databases and Schemas In Snowflake

Click + Create to create a new Database

Enter Name and click 'Finish`

Click Schemas on the tab at the top

Click + Create to create a new schema

Enter Name and click Finish

Use this process to create Staging, ODS, and DWH

ODS is an (O)operational (D)ata (S)tore

(D)ata (W)are(H)ouse

(advanced users) Not shown in the Demo video but you can try this using the command line

Under worksheets

Select a worksheet you would like to run the query

Type create schema schema_name and click run.

You can see the success message here in results.

We created this schema in ‘ExampleDB’ database, here in the explorer refresh it first and click on the database.

You can find the new schema here, and select staging as your schema for any tables you want in here.

You can view those tables under Staging in the left explorer.


### Creating a table in a database

Select the database you want to create a table in and click create.
Use UserSales for the table name
Click add to add columns. (in this demo, userid, zipcide, and sales)
Give your column a name and datatype, null or not null and add more as you like
Click finish.

You can click into the table you created and see the columns and their type. (Snowflake takes all types of numbers as NUMBERS and strings as VARCHAR. )

### Loading data into the table

Snowflake will use a backend system called a Warehouse to actually execute the load files

To load data into the table,
click on load table
select the warehouse in the pulldown menu and click Next
(Source Files tab) select files to upload the file from your local, select the file and click next.

### Setting up file formats for data loading

Now depending on what format the file is in you can select that format.
You will need to create one initially.
To create one, click + give it a name, select the format type from the dropdown and check all the other options as shown and then click finish.
Click next, select the loading options. -You can select stop when an error occurs select this one or continue loading valid data even if an error occurs select the last option and then click finish.
Notice 27 rows loaded without any error.
Click OK and go to the database, you can see that 28 rows have been loaded into the table and its size here.

### Worksheets

Snowflake also provides an interactive command line for SQL for advanced users. Feel free to explore this. This is found under Worksheets on the toolbar.


When you frequently run the same query, you can also save it under a Worksheets.

Here is a sample challenge for you to try:

Go to worksheets, refresh the explorer.
Select the database and schema we created and the table
You can even create your own tables as you would in standard SQL
To see what we have in the table, write a standard SQL query.
select * from table_name;
You can rename the worksheet by double-clicking on it and give it a name.

### Loading data with the Snowflake Client
Now that you know how to upload data in Snowflake using the Snowflake UI, let's see how to do the same job using the SnowSQL Client.

1. Open the SnowSQL client that you installed in your local machine and log in to your account. You should see the following:

2. Run the "show databases"; command to get information about already existing databases in your Snowflake account.

3. Let's use theUdacityExercise database for this demo. (Note: If you do not have the UdacityExercise database, you can create it as shown in the previous concepts.

4. Since we will be uploading a JSON file, we need to create a JSON file format.

5. Next step is to create the Staging Area, which is a temporary holding area for data.

6. Creating Tables, Uploading files, and Copying data into the table - Create a table with one column of type variant.

7. upload data from your local computer to the Staging Area

8. Finally copy the data you just uploaded to the staging area into the table
9. 
10. 
11. 


Loading Files in Snowflake using SnowSQL

Open the "SnowSQL" client that you set up on the page "Demo: Getting Started in Snowflake" in the "Data Architecture" Lesson, and execute the following commands

Create a Database called "UDACITYEXERCISE"

CREATE DATABASE UDACITYEXERCISE;

Create "STAGING" schema in the "UDACITYEXERCISE" database

CREATE SCHEMA "UDACITYEXERCISE"."STAGING";

Create "FLOORS" table in the "STAGING" Schema of "UDACITYEXERCISE" database

CREATE TABLE "UDACITYEXERCISE"."STAGING"."FLOORS" ("FLOORID" INTEGER, "FLOORNAME" STRING, "BUILDINGID" INTEGER);

The "FLOORS" table contains three columns with headers "FLOORID", "FLOORNAME" and "BUILDINGID", respectively. The column names and data types are chosen to be in accordance with the "floors.csv" file.

Create "ROOMS" table in the "STAGING" Schema of "UDACITYEXERCISE" database

CREATE TABLE "UDACITYEXERCISE"."STAGING"."ROOMS" ("ROOMID" INTEGER, "ROOMNAME" STRING, "FLOORID" INTEGER, "BUILDINGID" INTEGER, "TOTALAREA" DOUBLE, "CLEANEDAREA" DOUBLE);
Before we can load data in the tables created above, we need to create a file format object. Let's call it "CSVFILEFORMAT". It can be created by the following command

CREATE FILE FORMAT "UDACITYEXERCISE"."STAGING".CSVFILEFORMAT TYPE = 'CSV' COMPRESSION = 'AUTO' FIELD_DELIMITER = ',' RECORD_DELIMITER = '\n' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = 'NONE' TRIM_SPACE = FALSE ERROR_ON_COLUMN_COUNT_MISMATCH = TRUE ESCAPE = 'NONE' ESCAPE_UNENCLOSED_FIELD = '\134' DATE_FORMAT = 'AUTO' TIMESTAMP_FORMAT = 'AUTO' NULL_IF = ('\\N');
CREATE OR REPLACE STAGE MY_CSV_STAGE FILE_FORMAT = CSVFILEFORMAT;


Now, it's time to load the data in respective tables. We will first "PUT" data in "MY_CSV_STAGE" and then copy it from "MY_CSV_STAGE" to the tables. Let us start with loading data present in "floors.csv" in the FLOORS table.

PUT file:///Users/abhiojha/Documents/Udacity/floors.csv @MY_CSV_STAGE AUTO_COMPRESS=TRUE;

The above "PUT" command uploads (i.e. stages) data from my local directory (/Users/abhiojha/Documents/Udacity/floors.csv) to a named internal stage called "MY_CSV_STAGE". 


### Loading Large Data Files in Snowflake
To upload large files (>150 MB), we will use an optional parameter called Parallel and set its value to an ''. This parameter specified the number of threads used for uploading files. 

Setting integer to 1 means no parallelism. The max value of integer is 99. Snowflake handles file uploading as follows:

Small files (< 64 MB) are uploaded as individual files.
                 
Large files are split into chunks, staged concurrently, and then reassembled.

eg. PUT file:///Users/abhiojha/Documents/Udacity/floors.csv @MY_CSV_STAGE AUTO_COMPRESS=TRUE; parallel=4

### Next, we will copy the data from "MY_CSV_STAGE" to the FLOORS table as follows:
                 
eg. COPY INTO "UDACITYEXERCISE"."STAGING"."FLOORS" FROM @MY_CSV_STAGE FILE_FORMAT = '"UDACITYEXERCISE"."STAGING"."CSVFILEFORMAT"' ON_ERROR = 'ABORT_STATEMENT' PURGE = TRUE;
                 
**Once we are done uploading the data we can view the "FLOORS" table by executing**

SELECT * FROM UDACITYEXERCISE.STAGING.FLOORS;

## Create a Schedule - Scheduling Data Ingestion

![image](https://user-images.githubusercontent.com/68102477/124898113-3ce3bd00-e022-11eb-8dca-613a3607646e.png)

All source files have to be scheduled to ingest into the staging database.

**When can it happen?**

**Nighttime is a common time when demand on primary systems is less**

Legacy system data

Large enterprise data sets

Outside vendors and suppliers data

Any data that needs longer extraction time for any reason

**Daytime is common when data is related to day-to-day operations**

Security systems

Messaging

Human resources data

Inventory data

**Real-time is needed for systems that need an instant response**

Banking

Trading systems

**For example**

Wall street systems have the requirement of processing market data and trades in realtime

Inventory replenishing can be processed during the intraday

Bank office systems for compliance and regulation or reconciliation checks can be processed end of the day or overnight.


## Create a Metadata Schema

 It is a table of tables, where the relationships between the tables are defined
 
![image](https://user-images.githubusercontent.com/68102477/124898866-ec209400-e022-11eb-8418-347c827d5e1c.png)


A metadatabase schema is a higher-level schema made up of all of the other schemas of the staging area. The major components of the metadata included:

 
Source

Files

Fields

Business rules

Because the metadata schema is in table format itself and stored in a database, changes can be managed easily by the production operations team via a central webpage

Safeguards provided by MetaDatabase Schema

Each of the components mentioned above has its own table in the metadata schema, which provides safeguards

Temporary data source changes can ensure begin and end at the correct dates

Version control of changes allows for easy and accurate monitoring or failure analysis

Easy and fast access to check or change data names, descriptions, scheduling for any and all sources

![image](https://user-images.githubusercontent.com/68102477/124899495-884a9b00-e023-11eb-9eeb-940dce002f5c.png)


## Ingestion Techniques

**There are 3 main ways of loading data**

**Manual and ad-hoc as needed** - Especially used during development and when there are anomalies

**Bulk loading** - Compression reduces the size of the data, which means faster. Since the database server doesn’t have to write to the transaction log, which means this is a much faster technique than manual

![image](https://user-images.githubusercontent.com/68102477/124900400-5d147b80-e024-11eb-80e6-82e36729cfa4.png)

**Continuous loading throughout 24/7/365** - This is transaction data that must be updated in milliseconds

**Drowning in Data**

Humans generate 2.5 quintillion bytes of data every single day. Experts predict by 2025, we will reach over 400 exabytes.

This is important because the companies that deal with data have to handle the increasing data demands. 

As a Data Architect, you must manage the data before it becomes unmanageable. Technical Strategies that can help:

Use micro-batches that occur every few minutes which prevents bottlenecks, since we cannot handle huge amounts of data all at one time. We can still use batch processing, but more frequently with smaller chunks

Use message-oriented middleware that can communicate with database servers as needed

Take advantage of replication servers

![image](https://user-images.githubusercontent.com/68102477/124900809-c4cac680-e024-11eb-9745-3f71a33f835e.png)

![image](https://user-images.githubusercontent.com/68102477/124901171-1bd09b80-e025-11eb-8589-215753a3af75.png)

**[Why so many projects fail ?](https://designingforanalytics.com/resources/failure-rates-for-analytics-bi-iot-and-big-data-projects-85-yikes/)**

Lack of leadership agreement

Incorrectly selecting the right technology stack for desired scaling and performance

Companies are not agile

AGILE => START SMALL - DELIVER QUICKLY - KEEP IMPROVING ADDING MORE FUNCTIONALITIES (this gives less risk of failure)


Business requirements change before a system is implemented

## On-premise vs. Cloud-Native Solutions

The ability to handle structured, unstructured and semi-structured data in the same systems is possible now in some Cloud-native providers

Cloud provides unlimited scaling, while On-premise infrastructure, typically, has scalability challenges

On-premise infrastructure and local hardware that is already pushed to the max can cause performance issues

Regardless of where the data is stored, when data format or data sources change - the staging hub should be able to handle the change by having configurable metadata tables.44


## Further Reading

[Virtual hands-on labs](https://www.snowflake.com/virtual-hands-on-lab/)

[Getting started tutorials](https://docs.snowflake.com/en/user-guide-getting-started.html)

[Here stories from Snowflake experts](https://www.snowflake.com/blog/)

[New vendor products and how they fit in the emerging Data warehouse Architectures](https://a16z.com/2020/10/15/the-emerging-architectures-for-modern-data-infrastructure/)

[Articulated the best practices of Enterprise Data Architecture](https://www.mckinsey.com/business-functions/mckinsey-digital/our-insights/how-to-build-a-data-architecture-to-drive-innovation-today-and-tomorrow)




