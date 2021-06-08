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






