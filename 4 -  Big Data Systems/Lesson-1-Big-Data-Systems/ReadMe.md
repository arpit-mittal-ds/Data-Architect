# Notes

There are two different roles in the industry: Big Data Engineer and a Big Data Architect. This course is designed with the focus on Data Architecture

You can think of a **Big Data Architect as a bridge between the business and/or technical leadership** of the company and the actual engineering team, working with the leadership to understand requirements better, propose solutions, provide a rationale.

## Course Overview - The course is divided into 5 lessons and a final project.

1. We will begin our journey by looking at the characteristics of Big Data, its business value, and how companies are using Big Data today.

2. Next, we study the most popular storage and processing frameworks.....aka...Big Data ecosystem components

3. Next, we will dive deep into NoSQL, how it differs from traditional relational databases, how to model, and what the tool interface looks like

4. Finally, we will talk about the benefits, challenges, design patterns of Data Lake technology

5. Your final project is based on a real-world scenario that will require you to think like an architect and build an end-to-end data lake system.

### The Course Learning Objectives are:

Identify the characteristics of big data and the business value of big data.

Evaluate the different storage and processing frameworks to work with Big Data and apply each to the appropriate use case.

Identify use cases for NoSQL databases and create a NoSQL data model

Design a scalable data lake architecture using design patterns [for big data]

## Big Data

 - is not just a single technology but more so an entire field; hence it is difficult to precisely define; some even refer to it as a concept.
 
 - provides ways to work with **massive data sets that are too large or complex to be dealt with by traditional data-processing application software.**

### 4Vs" of Big Data

Big Data problems should have one or more of the following characteristics. These are called "4Vs" of Big Data.

Volume - Refers to the size of the data (Big Data processes hundreds of gigabytes to petabytes)
Example: Mobile phone carriers

Velocity - refers to the speed at which data is being generated.
For example social media sites, IoT devices, and connected cars

Variety - Data from multiple sources and in different formats (and type).
example: Healthcare

Veracity - Data in doubt. Incorrect, inconsistent, or missing data.

![image](https://user-images.githubusercontent.com/68102477/125284460-cfef6080-e35c-11eb-9ef4-d5c4fb517dcb.png)

### Big Data Analytics provide value to companies in the following ways:

Improved products and service

Cost reduction and revenue increase

Faster, better decision making by executive teams

Using their data to identify new opportunities leads to smarter business moves, more efficient operations, higher profits, and happier customers.

![image](https://user-images.githubusercontent.com/68102477/125284661-12b13880-e35d-11eb-8a18-068b7e9d9a0f.png)

## When to use or not use Big Data

![image](https://user-images.githubusercontent.com/68102477/125285694-4345a200-e35e-11eb-9041-8cf4113b4486.png)

## History and Evolution of Big Data

![image](https://user-images.githubusercontent.com/68102477/125286072-b4855500-e35e-11eb-989b-f9dd4ed3d04c.png)

![image](https://user-images.githubusercontent.com/68102477/125286194-e0083f80-e35e-11eb-9f45-d717d861917d.png)

## < .... would need AWS Account: http://aws.amazon.com/   >

The default AWS region for you will be US East (N. Virginia) (us-east-1). 

The budget for this entire Nanodegree is $75 for you. Although, we find about $20 sufficient for most to complete this Nanodegree.

Track your usage on the AWS web console. Go to AWS Billing Dashboard, and view the monthly spending. It will list you the services constituting the spend.
Submit a ticket to Student Support Services to know your current balance.

Install AWS Toolkit Extension in VS Code
Open Extensions tab
Search AWS
Install AWS Toolkit

[AWS Console](https://console.aws.amazon.com/console/home?region=us-east-1#)

**Silo** -	Physical or Logical separation of data or people which limits collaboration and data sharing

**Data engineer** -	A person who manages a company's Big Data infrastructure. Engineers are expected to be knowledgeable and efficient in Big Data tools. This person should also to get results from theBig Data system quickly

**Data Architect** -	This person acts as a bridge between the business and/or technical leadership of the company and the actual engineering team, working with the leadership to understand requirements better, propose solutions, provide a rationale.


## Further Reading and Learning

[History of Big Data](https://www.sas.com/en_us/insights/big-data/what-is-big-data.html)

[Value of high-quality Big Data](https://www.precisely.com/blog/big-data/quality-data-big-data-worth#:~:text=The%20big%20data%20market%20is,they%20were%20deriving%20from%20it)

How important is it to maximize your data’s value?

[Big Data definition, value, benefits, and context](https://www.i-scoop.eu/big-data-action-value-context/)

What is big data

How is big data used

Why is it essential for digital transformation

Book: [Why making sense of larger, more complex data is a must for enterprises](https://go.oracle.com/LP=87687)

What big data is and how it works.

How the volume, velocity, and variety of structured and unstructured data make it increasingly challenging to deal with.

Big data use cases and best practices.

How enterprises can use big data to make better, faster decisions.


# Business Value of Big Data Analytics

Big Data allows us to search for and find patterns in various data sets. Data set can be generated by Humans, Machines, or Sensors.

Big Data enables "predictive modeling" capabilities when combined with Machine Learning

Big Data is used in pretty much all the fields:

Government

Healthcare

Media & Entertainment

Insurance

Banking and Finance

The Internet of Things (IoT)

![image](https://user-images.githubusercontent.com/68102477/125384489-5a2ad980-e3dc-11eb-953e-7806d43f3caa.png)

![image](https://user-images.githubusercontent.com/68102477/125384662-9c541b00-e3dc-11eb-9a19-a6a3c07341be.png)


## How Companies are Using Big Data?

From small to large, thousands of companies in a variety of industries are using Big Data today to improve their products, drive better customer engagement, or building new services to generate new revenue streams. These industries include Insurance, Banking, Healthcare, Government, Media & Entertainment, and IoT

![image](https://user-images.githubusercontent.com/68102477/125384738-b5f56280-e3dc-11eb-8de1-8e457c6ac965.png)

![image](https://user-images.githubusercontent.com/68102477/125384885-e806c480-e3dc-11eb-9e71-83bccde9223f.png)

![image](https://user-images.githubusercontent.com/68102477/125399542-1643ce80-e3f4-11eb-9bad-78ef195d3b8b.png)

![image](https://user-images.githubusercontent.com/68102477/125399587-26f44480-e3f4-11eb-909b-9fa0d87491a6.png)



## Horizontal and Vertical Scaling

Scaling up and down

Vertical Scaling: You either buy (and replace the old one) new upgraded hardware. Or you upgrade the hardware specs (CPU, RAM, Graphics, Storage, Networking, etc) of the existing hardware (server)

Horizontal Scaling: Buy a large number of machines. You add more machines to your existing resource set.

In vertical scaling, you will have a single node. In horizontal scaling, you will have multiple nodes connected together in a network (called a cluster of nodes)

## Big Data and A.I.

## Big Data Ecosystem

Cluster = A set of nodes connected together in a network
Node = A computer server that is part of a network
Commodity Hardware = Hardware which is relatively inexpensive, widely available and components of it are easily interchangeable.
Because commodity hardware is cheap, it's expected that its components will also fail often. Big Data builds on top of the cluster using commodity hardware and that's why having built-in fault tolerance is crucial.

### Tools

Ingestion Tools (Sqoop, Flume, Kafka, Nifi)

Processing Tools (MapReduce, Pig, Hive, Spark)

Storage Layers (HDFS)

Security (Ranger, Knox)

Governance Tools (Atlas)

Administration Tools (Zookeeper, Airflow, Ambari)

Cloud Providers (AWS, Azure, GCP)



