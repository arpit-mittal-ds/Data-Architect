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


