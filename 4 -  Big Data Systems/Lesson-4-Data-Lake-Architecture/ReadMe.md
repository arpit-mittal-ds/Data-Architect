
![image](https://user-images.githubusercontent.com/68102477/121683183-5f0c1d00-cb00-11eb-89e7-41d96fbe00f5.png)

## What is a [Data Lake](https://aws.amazon.com/big-data/datalakes-and-analytics/what-is-a-data-lake/)

A data lake is a centralized repository that allows you to store all your structured and unstructured data at any scale. You can store your data as-is, without having to first structure the data, and run different types of analytics—from dashboards and visualizations to big data processing, real-time analytics, and machine learning to guide better decisions.

Many Silos that form as a natural consequence of organizational and data structure suddenly have a chance to be broken down.

![image](https://user-images.githubusercontent.com/68102477/121683623-fcffe780-cb00-11eb-9cab-b970c41b71d9.png)


Data Lake is a central place where we can bring together data, Machine Learning, and Analytics.

Data Lake can store data of any type, including unstructured, semi-structured, and structured.

It Can handle scaling of any size

**Breaks data silos**

To understand data silo - consider this example. 

Let say a media and telecom company has multiple products. Say they have internet services, table TV services, home security, and monitoring services. Customers can buy each of these products individually or in bulk. Now in reality what happens is that **each of these products is actually handled by a totally different team or a department** in an organization. Each product uses its **own storage and database systems** to store the required data. This makes it incredibly **hard to analyze the customer from a 360 perspective.** You really want to understand customer behavior across all of your product lines. But since each organization manage each product and have their own system of storing data, this **creates data silos**. Data Lake solves this problem, by bringing all the crucial enterprise data under one centralized system. This makes it easy for different organizations within a company to collaborate.

**Schema on Read**

Data Lakes use Schema on Read technique. 

Meaning you **keep writing the data in the data lake maintaining its original raw format and enforce the schema when you need to read this data back.** 

This is a different approach than Data Warehousing. In data warehousing (just like in relational DBs) you need to specify the schema first. This makes the process of writing different types of data to data lake at scale very hard to achieve as schema generally evolves very quickly.

**Enables Analytics Use Cases**

The Data Lake democratizes data and is a cost-effective way to store all data of an organization for later processing. Data Analysts within the company can focus on finding meaningful patterns in data with more visibility and easy access to the required data.

Data lakes store data cheaply and can be used before you have an optimized use case.

![image](https://user-images.githubusercontent.com/68102477/121683591-f07b8f00-cb00-11eb-8af5-c2fb6fb7e171.png)

## Why Data Lakes?

Data Lake promotes organizations where

Innovation is enabled

Real-time, integrated-data Analytics is possible

Data silos are broken, which allows new collaboration and interactions

Companies can be ready for the unknown use case

Data, even new data, can be dynamic, easy to incorporate, and quick to access

Self-service access instead of weeks months of work to get what they need

Companies can readily identify new revenue streams, recognize patterns, provide new types of previously unknown(or unattainable) information to make strategic decisions



## Big Data Format Considerations


As a Data Architect, you have **full control over how exactly you store the data in the data lake.** This is in contrast to RDBMS systems where the engine stores the data internally in a proprietary format. As a Data Architect, you will have to take into consideration multiple elements of a given data format such as type of storage format (row-oriented vs columnar oriented), size of the data, schema evolution capabilities, splitability, and compression. In this section, we will explore some of these elements. 

As a Data Architect, the design decision you make around selecting the data format is one of the most crucial ones with long-term impacts on cost, performance as well as maintenance overhead of the data lake storage.

### Consideration 1: File Size

One major consideration is the general size of each file in your data lake. As we learned in lesson 2, HDFS stores data into 128 MB (default size in most environments ) chunks. Every file is represented by multiple blocks (also called "Objects", or "Chunks") in the Hadoop cluster. As we learned in lesson 2, these blocks reside on the data node. Each block is registered with a name node ("metadata"). Each metadata entry for each block residing in the name node consumes about 150 bytes. Too many small files in a data lake with a large volume of data will lead to a large number of files and hence the amount of metadata that the name node is holding will also increase.

Imagine this way: If you have a book of 500 pages, however, the "Table of Contents" of the book itself is 250 pages, the table of content becomes less useful and it will take you much longer to find out the exact page number for the lesson you wanna read.

To put this in perspective, 100 million files, each using a block, would use about 30 gigabytes of memory in the name node.

Hadoop ecosystem tools are not optimized for efficiently accessing small files since reading a large number of small files comes with high I/O overhead. So take away here is that using a small number of larger files will lead to better performance than a large number of small files. If you have a use case where you inherently get smaller files, oftentimes, companies run nightly or hourly jobs to consolidate smaller files into bigger files.

Consideration 2: Type of Storage (Row Oriented vs. Columnar Oriented)
There are multiple data formats such as CSV, TXT, Parquet, ORC which can be used to store data. These formats differ in how they actually store data. Data can be stored in 2 different ways.

Row Oriented Format
Column Oriented Format
Let's explore them one by one.

Row Oriented Format
Traditional and very popular format where data is stored and retrieved one row at a time and hence could read unnecessary data if some of the data in a row are required.
Example: if you have a table with 1000 columns, and when you only need to read only 10 columns, you will still need to read the entire row (of 1000 columns) and then filter out unnecessary data. Because of this, row-oriented data formats (such as CSV, TXT, AVRO, or relational databases) are NOT efficient in performing operations applicable to the entire datasets and hence aggregation in row-oriented is an expensive job or operations.
Records in Row Oriented Datastores are easy to read and write. Often times relational databases are uses this mechanism for online transaction system.
Typical compression mechanisms which provide less efficient result than what we achieve from column-oriented data stores.
Column Oriented Format
Data is stored and retrieve in columns and hence it can only able to read only the relevant data if required.
Example, if you have a table with 1000 columns, and when you only need to read only 10 columns, there is NO need to read the rest of the columns at all. This leads to huge performance enhancements.
Many big data technology tools such as Parquet and NoSQL databases are optimized to deal with Column-oriented formats leading to efficient performance.
Column-oriented data formats offer high compression rates due to little distinct or unique values in columns.
Examples of Column Oriented Data formats are: ORC, PARQUET
QUESTION 1 OF 3
Row Oriented Data stores such as TXT, CSV, AVRO and/or Relational Databases such as MySQL offer better data compression over Column Oriented Data Formats



Consideration 3: Schema Evolution
The schema of the dataset refers to its structure or organization. In databases, we develop DDL statements such as "CREATE TABLE..." to define the table schema (table name, column names, data types, primary keys, foreign keys, etc. ). We retrieve the schema or the metadata of the individual data set using SQL statements such as "Describe Table". In its simplest form, column headers of a CSV file can be considered schema.

As a Data Architect, you need to assess if the schema of your data set is anticipated will be changed or evolved over time. You need to determine how will your file format deal with newly added or deleted columns? Often times in IoT use cases, as device manufacturers upgrade the software and hardware over time, the device can send out data with a modified schema structure.

When evaluating schema evolution specifically, some of the key questions to ask of any data format are following:

Does the data format support schema evolution?
What is the impact on the existing data set if the new data set is received with an updated schema?
How easy or hard is it to update the schema (such as adding, removing, renaming, restructuring, or changing the data type of a field)
Does your data need to be human-readable?
What is the impact of schema evolution over the file size and processing speed?
How would you store different versions of the schema?
How different versions of the schema will integrate with each other for processing?
Consideration 4: Compression
Data compression reduces the amount of storage or transmission needed of a given set of data. With data compression, you can reduce the storage costs, and efficiently transmit the data over the network reducing resource utilization. As mentioned earlier, columnar data can achieve better compression rates than row-based data. It's more efficient to compress the data set by column since the data in the given column would be of the same type. For example, storing all "zip codes" together leads to more efficient compression rather than storing data of various types next to each other such as string, number, date, string, date. Compressed data would need to be decompressed at some point and decompression will incur additional compute costs. Generally, compression is recommended; however, you should always consider the impact on performance vs. reduced storage cost for your given use case.

Popular compression mechanisms used in Big Data are: "gzip", "bzip2", "lzo", and "snappy". Depending on the type of compression you can get a significant reduction in your data size (as high as 70 to 80%). You should also use compression formats that are "splittable". You will learn more about it in the next section.

 Column Oriented Data formats offer very high compression ratios (about 70% higher generally) compared to row based data formats.
 
Consideration 5: Splitability
As we learned in Lesson 3 (Ingestion, Storage and Processing), processing large amounts of data (terabytes to petabytes) requires breaking the processing job into multiple parts that execute independently (e.g MapReduce/Spark). The ability to break the data down into smaller blocks and processing these blocks in parallel is the key to efficient processing and speed. Choice of file format can critically affect the ease with which this parallelization can be implemented. For example, if each file in your dataset contains one massive XML structure or JSON record, the files will not be “splittable”, i.e. decomposable into smaller records that can be handled independently.

The general best practice is to always use a data format that offers splitability. Keep in mind that applying a compression mechanism sometimes makes a splittable data set into the unsplittable data set. For example, if you have a text file or csv file to process its content is splittable. However, if you compress the txt file with either "gzip", "bzip2" compression mechanisms, then the file is not splittable anymore reducing processing efficiency since the file can not be broken down into smaller blocks and processed in parallel.

Please refer to the table below to understand the various properties of various compression techniques.

Compression Format	Splittable?	Read/Write Speed	Compression Level
.gzip	No	Medium	Medium
.bzip2	Yes	Slow	High
.lzo	Yes, if indexed	Fast	Average
.snappy	No*	Fast	Average
*if Snappy compression is used with Parquet format, it's splittable. More on this in the next section











