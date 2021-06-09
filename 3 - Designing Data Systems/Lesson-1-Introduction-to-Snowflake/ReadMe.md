# Notes  Getting Started in Snowflake


## Snowflake - Modern Cloud Data Warehouse Platform

### Snowflake Account Setup

![image](https://user-images.githubusercontent.com/68102477/121111739-c309b980-c852-11eb-9cea-e88b96b0f997.png)

![image](https://user-images.githubusercontent.com/68102477/121111774-d0bf3f00-c852-11eb-8c1a-aa1b8d34387c.png)

![image](https://user-images.githubusercontent.com/68102477/121111816-e5033c00-c852-11eb-8780-dbcffee1ec0e.png)

![image](https://user-images.githubusercontent.com/68102477/121111914-082deb80-c853-11eb-9f24-741d94ae3c15.png)

### In the Help section, you’ll find documentation

**In the Education and Training section, there are many excellent tutorials**

![image](https://user-images.githubusercontent.com/68102477/121113478-72e02680-c855-11eb-9cf6-3c605a4e4d45.png)

[Access Snowflake Account](https://hf07313.australia-east.azure.snowflakecomputing.com/)

![image](https://user-images.githubusercontent.com/68102477/121113755-e97d2400-c855-11eb-9104-a5004f63422a.png)


 
## Download Snowflake Client


 ![image](https://user-images.githubusercontent.com/68102477/121123160-133e4700-c866-11eb-9b91-b55320ec7188.png)
 
 ## [Complete Snowflake Tutorial Lab](https://s3.amazonaws.com/snowflake-workshop-lab/Snowflake_free_trial_LabGuide.pdf)

### Source of data - [CitiBike Data](https://www.citibikenyc.com/system-data)

## Steps for the lab exercise:

This lab exercise is based on the analytics team at Citi Bike, a real citywide bike share system in New York City, USA. This team wants to run analytics on data to better understand their riders and how to serve them best.

### Step 1 - Load structured .csv data from rider transactions into Snowflake

This data comes from Citi Bike internal transactional systems.

Let’s start by preparing to load the structured data on Citi Bike rider transactions into Snowflake.

We are using the COPY command and S3 storage for this module in a manual process so you can see and learn from the steps involved. In the real-world, a customer would likely use an automated process or ETL product to make the data loading process fully automated and much easier. 

**1.1 Create a Database and Table** - First, let’s create a database called CITIBIKE that will be used for loading the structured data.
At the top of the UI select the “Databases” tab. Then click on “Create” and name the database “CITIBIKE” and click “Finish”.

**DDL operations are free!** Note that all the DDL operations we have done so far do NOT require compute resources, so we can create all our objects for free.

![image](https://user-images.githubusercontent.com/68102477/121157225-b5712580-c88c-11eb-8aa4-b995ef7b55ed.png)


**1.2 Create an External Stage** - We are working with structured, comma-delimited data that has already been staged in a public, external S3 bucket. Before we can use this data, we first need to create a Stage that specifies the location of our external bucket.

![image](https://user-images.githubusercontent.com/68102477/121158693-e736bc00-c88d-11eb-9faf-8f9fa51e2aad.png)

**1.3 Create a File Format** - Before we can load the data into Snowflake, we have to create a File Format that matches the data structure.
At the top of the Snowflake UI, click the Worksheets tab. You should see the worksheet
with all the SQL we loaded in a prior step.

![image](https://user-images.githubusercontent.com/68102477/121164258-cfae0200-c892-11eb-90ff-1c8d0f765553.png)

**1.4 create a Warehouse/Compute for Data Loading.** 
Snowflake’s compute nodes are called Warehouses and they can be dynamically sized up or out according to workload, whether the workload be loading data, running a query, or performing a DML operation. Each workload can have its own data warehouse so there is no resource contention.

**The Warehouses tab** is where you set up and manage compute resources (virtual warehouses) to load or query data in Snowflake. Note a warehouse called “COMPUTE_WH (XL)” already exists in your environment.


![image](https://user-images.githubusercontent.com/68102477/121168823-b60eb980-c896-11eb-892e-02087af0d3da.png)

**1.5 Run a COPY command to load the data into the TRIPS table we created earlier**

![image](https://user-images.githubusercontent.com/68102477/121169273-2cabb700-c897-11eb-8cd5-1f69c37e1a81.png)

### Step 2 - Create a New Warehouse for Data Analytics

Let’s assume the Citi Bike team wants to ensure no resource contention between their data loading/ETL workloads and the analytical end users using BI tools to query Snowflake. Snowflake can easily do this by assigning different, appropriately-sized warehouses to different workloads. 

Since Citi Bike already has a warehouse for data loading, let’s create a new warehouse for the end users running analytics. We will then use this warehouse to perform analytics.

![image](https://user-images.githubusercontent.com/68102477/121293598-3da80700-c92f-11eb-98e5-39e4a9f6069c.png)

