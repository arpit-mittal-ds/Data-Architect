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

### Vertical Scaling

In order to handle the increased demands of bigger data, we can scale vertically, which means we can increase the capacity of existing hardware or software by adding additional resources, including processing power, storage, memory, and even network.

Keep in mind, you can only get as big as the size of the physical server

Technically, we can also "scale" our Relational Databases such as MySQL, PostgreSQL, MariaDB. What that means is you can increase the underlying hardware configurations.

**Advantages of Vertical Scaling**

Easy to manage and implement

Reduced software, licensing, and operating costs

Less administrative efforts

Lower cooling costs

Easy to manage security

**Disadvantages**

Limited scaling

Can be a single point of failure

Longer downtime during maintenance

Upper limit on hardware upgrades

Hardware upgrades themselves can be costly

### Horizontal Scaling


You can enhance the performance of the server node by adding more instances of the server to the existing pool of servers

When we do this, we are not actually changing the capacity of the individual server, but we actually decrease the load on a specific server by distributing the load

We do this with the help of distributed file systems, clustering, and load balancing.

Examples of horizontally scalable systems: HDFS, HBase, Cassandra, MongoDB, Amazon DynamoDB.

![image](https://user-images.githubusercontent.com/68102477/125540058-50c4726e-0187-4d05-b367-06fa1ed22509.png)

There are workarounds to overcome disadvantages of horizontal scaling. 

![image](https://user-images.githubusercontent.com/68102477/125540201-b7967888-58cb-431e-b5b5-871b051136ac.png)

### Exercise: Scenario

An electronic device manufacturing company sells its products online via its website. The company has 3 tier web architecture where the first layer is the front-end (HTML, CSS, JavaScript), the middle layer is the application server processing incoming requests from the front-end, and the third layer is the database layer. The company is currently using a single Postgres SQL database server to store product and order information. Last year, during a holiday sales event, the company announced aggressive discounts to promote their product. Too many customers tried to visit the website. However, the database could not handle millions of concurrent requests and crashed. The company lost customer trust and revenue. The company's CTO has directed you to research and suggest 3-5 techniques that can be implemented to scale the database layer of the website. Can you help?

**#1 Read Replicas** - Separate the read and write traffic. One machine will perform all writes, and data would be replicated to other nodes which will serve only read requests for application

**#2 Connection Pooling** - Reuse existing connections and reduce the overhead that comes with establishing a new connection to RDBMS for every query

**#3 Partitioning (Also known as sharding)** - Partition the data based on a particular group or range. e.g All records starting with A-P written in server 1, Q-Z in Server 2

[Database Server Scaling Strategies](https://realscale.cloud66.com/database-server-scaling-strategies/)

## Big Data and A.I.

While BD and AI are two distinct roles, there is a huge amount of skills overlap.

Big Data Engineers focus on data cleaning, manipulation, ETL, and orchestration pipelines

AI or Machine Learning Engineers focus on feature engineering, model building, and visualization

Big Data and AI teams work closely with each other.

![image](https://user-images.githubusercontent.com/68102477/125543956-9f27c10c-6e8b-484c-834d-e5f135b61dd0.png)

## Big Data Ecosystem

Cluster = A set of nodes connected together in a network
Node = A computer server that is part of a network
Commodity Hardware = Hardware which is relatively inexpensive, widely available and components of it are easily interchangeable.
Because commodity hardware is cheap, it's expected that its components will also fail often. Big Data builds on top of the cluster using commodity hardware and that's why having built-in fault tolerance is crucial.

### Tools

![image](https://user-images.githubusercontent.com/68102477/125544035-0b759887-6a10-407d-84cb-0d82b1d77040.png)

Ingestion Tools (Sqoop, Flume, Kafka, Nifi)

Processing Tools (MapReduce, Pig, Hive, Spark)

Storage Layers (HDFS)

Security (Ranger, Knox)

Governance Tools (Atlas)

Administration Tools (Zookeeper, Airflow, Ambari)

Cloud Providers (AWS, Azure, GCP)

![image](https://user-images.githubusercontent.com/68102477/125544246-1d949cac-7597-4d80-b96d-5fe21e407582.png)

**Open Source tools are part of the Ecosystem, which provides low entrance cost, but does have some important considerations to be aware of**

Can be complex to install and configure

Each product versions on different schedule

Incompatibility issues with updates

**Some 3rd party companies have packaged these tools together seamlessly to provide an easier experience but at a price.**

![image](https://user-images.githubusercontent.com/68102477/125544256-59dbdc77-0f5d-4875-9e48-15b52e2aa391.png)


## Introduction to Amazon EMR

EMR Cluster Creation and Termination
Amazon EMR is a cloud big data platform for processing vast amounts of data. EMR supports using open source tools such as Apache Spark, Apache Hive, Apache HBase, Apache Flink, Apache Hudi, and Presto. Building your own Hadoop clusters can be hard, time-consuming, and costly.

EMR allows you to create on-demand Hadoop clusters. EMR natively integrates with Amazon S3 and provides an abstraction on top of it called EMRFS. It allows you to access S3 with HDFS compatible interface.

Creating a KeyPair

Login to AWS

Go to Services -> Select EC2 (IMG1)

On the left side navigation column select KeyPair and then click on "Create KeyPair" button (IMG2)

Give your Keypair a name. If you are on Mac or Linux use PEM, if you are on Windows using Putty use PPK. (IMG3)

![image](https://user-images.githubusercontent.com/68102477/125546722-3aa6e6bf-c6af-4983-8542-d138d94ed9f1.png)

### Steps to create EMR cluster

Ensure "N.Virginia - US-EAST-1" is selected as region on the top right corner of the page

Ensure you have a KeyPair created and have access to it. If you do not have it, please go to Services -> EC2 -> Create keyPair

Go to Services -> Select EMR

Click Create cluster, go to advanced options

Select 5.31.0 EMR version

Select the right set of tools to install as shown in the video

Enable Glue catalog settings

Select an appropriate subnet which supports the EMR instances such as M5.XLarge

Ensure correct key pair is configured for launch

Review and launch

Terminating the Cluster

You pay for EMR for each minute that it is running, so you should terminate running when completed your exercises

Turn off Termination Protection

Click Terminate



https://user-images.githubusercontent.com/68102477/125550174-35514c09-7083-4082-98e6-5bc12b49426b.mp4



https://user-images.githubusercontent.com/68102477/125550186-34f78f26-dd17-41c0-9d5d-2bf8be60865f.mp4




**Connect to EMR Cluster**

Connect to EMR Cluster Steps

Login to AWS -> Go to EMR service

Launch the EMR Cluster. (See EMR demo for specific instructions)

Edit "Security Groups for Master"

Allow inbound connection on port 22 (SSH), allow "My IP" or "Anywhere"

Open a command line software such as Terminal on Mac or Putty on Windows

Establish SSH connection based on the code provided from AWS Console

https://user-images.githubusercontent.com/68102477/125550189-ed0511fe-ac37-4492-bc45-8d2d2ab07f16.mp4

In any enterprise's journey to Big Data, you will face many other problems beyond what you can solve with this set of tools.

Examples of such challenges include the following:

Aligning the leadership teams on design decisions, use cases,

Getting access to raw data

Configuring network, firewall

As an Architect your job is to think both long term and short term. Identify blind spots and proactively solve them before they become a risk to your project!

## Further Reading


[Apache Kafka: Ingest real-tome streaming data to HDFS](https://kafka.apache.org/)

[Airflow: Workflow management platform](https://airflow.apache.org/)

[Amazon EMR (Elastic Map Reduce)](https://aws.amazon.com/emr/)

[HDInsights (Easy, cost-effective, enterprise-grade service for open source analytics](https://azure.microsoft.com/en-us/services/hdinsight/)

[Databricks on Azure: Apache SparkTM based analytics service](https://azure.microsoft.com/en-us/services/databricks/)

[Data Proc: A fast, easy-to-use, fully managed cloud service for running Apache Spark and Apache Hadoop clusters in a simpler, more cost-efficient way](https://cloud.google.com/dataproc)

[Server Scaling](https://realscale.cloud66.com/database-server-scaling-strategies/)






