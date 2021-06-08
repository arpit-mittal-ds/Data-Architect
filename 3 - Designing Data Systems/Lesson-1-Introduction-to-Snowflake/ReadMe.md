# Notes - Importance of Data Architecture

## Lesson Overview - This lesson has 4 major topics:

1. The **importance** of data architecture and enterprise data systems to almost every company.

2. The **benefits** of data architecture and enterprise data systems to almost every company.
        **Getting rid of silos**
        **Scaling**
        
3. The business and data **artifacts** of data architecture.

4. How **OLTP, ODS, and OLAP models** play a part in an organization's **ability to analyze and report.**

![image](https://user-images.githubusercontent.com/68102477/121107135-c0a36180-c84a-11eb-9b44-4a672b5d9d73.png)


The diagram below shows how each step OLTP, ODS, and OLAP models play a part in an organization's ability to analyze and report. Each of the steps must be planned so the data can be ingested, then transformed in ways that allow it to be processed through the ODS and ultimately into the data warehouse. Once it is there, it can be queried and used in the analysis and in reports.

![image](https://user-images.githubusercontent.com/68102477/121107045-8f2a9600-c84a-11eb-8820-87ad9e2bc452.png)

## What is Data Architecture

![image](https://user-images.githubusercontent.com/68102477/121109264-8fc52b80-c84e-11eb-91e8-37a5f674fda2.png)

### Data Silos
Why is this topic so important?

They can occur when local employees and local departments manage their own data, transactions, and analytics. Many companies find themselves with this scenario, which can be a challenge for collaboration or scaling.

Silos, both in people and in data, can lead to inefficient and ineffective business decisions.

They are difficult to integrate and sometimes cause inconsistent, duplicate, and incorrect data.

Costs and processes are also duplicated.

### The changing landscape of data architecture
As data grows in quantity and quality, what data architecture actually is evolves in definition based on changing data and technology landscape.

With leading-edge technologies such as these which are massively dependant upon and producers of data, the need for data architecture and data system design becomes even more important.

Internet of Things
Cloud Computing
Microservices
Advanced Analytics
Machine Learning
Artificial Intelligence
Blockchain



## Importance of [Data Architecture](https://rusty-alderson.medium.com/enterprise-data-architecture-c5c579b54abe)

Data Architecture provides a **Master Plan** of all assets related to data, systems, and process

### Why is a Master Plan necessary?

A Master Plan helps an organization take a hard look at what it is doing and how it is doing it

**1. Helps manage data and data sources:**

You probably know people who have some of the following on their own computers.

Spreadsheet data
Text file or Presentation slides
Stand-alone database

**2. Helps in capturing institutional knowledge**
The veterans in your organization have a vast amount of knowledge. Capturing that and incorporating it into the system preserves and takes advantage of that wealth of information.

**3. Indicate problems with data resulting in ineffective analytics**

### Important business trends

**These trends reinforce the need for data architecture.**

Data volumes are increasing

Numer of data sources is increasing

Many organizations are considering moving to the cloud

Data from different sources is not in a compatible format for use in their system

### What kinds of data systems can help?

An ODS(Operational Data Store) system can centrally store all the transactional enterprise data.

A DWH (data warehouse), by bringing all that data together into one system, can provide relative, up-to-date, and comprehensive information

### How do those systems help decision-makers?

This data provides information, at business stakeholder's fingertips, which enables them to execute business strategies and models. This can result in

**Increased revenues through**

Better customer service 

Faster customer service

Increased customer service

Ability to offer new services

**Decreased expenses through**

Streamlining systems

Eliminating duplicate efforts

Reducing bottlenecks

The hidden gem of designing data systems

The research involved in design a data system forces people across the organization to talk to each other and collaborate. Those discussions are gold to an organization.

### QUESTION
A multinational company is growing fast, establishing operations in multiple locations. What kind of challenges does the company face if data architecture is not a part of their strategic decisions?
1. Silo Bases Systems - Silo systems can result in multiple versions of data
2. Not managing incoming and outgoing data can be a major cause of disfunction in a company
3. Bad data quality can cause revenue loss

 Many companies in todays climate are in jeopardy of losing their edge unless they embrace data architecture
 
 ## Actionable Intelligence Insights
Most organizations want systems to

Help to identify opportunities to improve the productivity

Cleanse bad data anomalies

Use a Single Version of Truth to reduce or eliminate multiple copies(possibly inconsistent) of

Data Reports

Find hidden patterns

**Working towards an enterprise architecture**

Forces the distributed teams to work together by bringing their data together
 
Integrates disconnected silo systems for a common purpose

Increases professional and social collaboration helps build a strong business culture
Helps to execute business strategies
The Role of the Data Architect
Ultimately, it is your job to help motivate data owners by showing them how a well-planned and implemented data architecture helps them meet their business goals, both for their department and the organization

## Artifacts (Documents) of an Enterprise Data Architecture

### What artifacts are needed to design a good Data Architecture strategy?

To implement a good Data Architecture strategy, an organization has to create certain documents, known in the business as “artifacts”. Following is a list of the major documents to include:

Data dictionary: helps to standardize business vocabulary

Enterprise Data models: used to create an ODS (Operational Data Store). We will discuss ODS later in the course

Data flow: enable a smooth transition of data movements crossing various silos. We will discuss data flows later in the course

Data stewardship: specifies who can access what data

Dimensional models: used to create a data warehouse structure for effective reporting and analytics

Data sharing agreements: articulate who can access what data

These documents help provide a route map for data flows

**Business Artifacts**
Alongside the data-related documents above, on the business side, there is also some documentation that is necessary:

Business rules: Guard the boundaries of those data flows

Business concepts:  Help everyone to be on the same page

Business requirements: Help to decide and build reporting and analytics

![image](https://user-images.githubusercontent.com/68102477/121126605-cb222300-c86b-11eb-92df-010f7e97f156.png)

![image](https://user-images.githubusercontent.com/68102477/121127101-9d89a980-c86c-11eb-8e7f-b1bb94b62163.png)

![image](https://user-images.githubusercontent.com/68102477/121127136-abd7c580-c86c-11eb-9404-7632b7ce5622.png)

Standards are important for heterogeneous and distributed systems to communicate with each other. Standards help ensure data is effectively collected, maintained, and made available.

### Types of Standards

Data dictionaries standardize crucial details such as data fields, data types, and data lengths

Business rules ensure all departments follow the same processes,
 
Stewardship deals with data-sharing agreements among various departments, otherwise known as Governance

Security ensures the data is used properly according to the CRUD model. CRUD stands for Create, Retrieve, Update, and Delete

Standardizing vendor products and their interfaces minimize the friction when trying to connect disparate systems to move the data back and forth.

As a result of implementing these standards, executive management and departmental heads are empowered to improve the business operations and execute new business strategies.

### Benefits of Standards

Avoids confusion and dissatisfaction of the stakeholders due to inconsistent and (possibly) incompatible/accessible data and information

Prevents data anomalies that result in effective report creation and analytics for your decision-makers.

Ensures compatibility when integrating data during mergers and acquisitions

When data standards are not implemented, the resulting structure contributes to silos being formed.

Addressing these issues is one of the key elements of importance in bringing Data Architecture into an enterprise.

### Data Flow Models
![image](https://user-images.githubusercontent.com/68102477/121127485-30c2df00-c86d-11eb-8ebe-7db4eb30e55d.png)

![image](https://user-images.githubusercontent.com/68102477/121127534-42a48200-c86d-11eb-81cd-9c49985eec09.png)

![image](https://user-images.githubusercontent.com/68102477/121127551-47693600-c86d-11eb-91e3-02970503d9d1.png)

### Models

**Conceptual models:** We are all familiar with social media. Data flows in these systems can be represented by conceptual models.

Logical models represent business concepts within a relationship diagram. The primary relationships are 1 to 1, 1 to many, many to many. Think about how your Customer Rep has many Customers. Each of those Customers orders many different products, and can submit many orders

ER models are physical implementations of Data Definition Language (DDL) statements given an RDBMS product, such as Oracle or Microsoft SQL Server. These are used in OLTP systems.

Dimensional models(databases tables) provide descriptive key information, which should contain non-transactional data. Examples are Customer, Employee, Product, Date, Location, etc., but not the Order table. Dimensional models are used to design a data warehouse either using a Star schema or Snowflake schema. These are used in OLAP systems
Once the system has been created, an analytical tool, such as Power BI or Tableau can be used to build an interactive analytical model for visualization.


### Why are Artifacts important?

Capture knowledge so new employees can be trained
Document the tribal and institutional knowledge of experienced and critical employees, as well as existing employees
Reduce business risk by documenting the business systems and processes. If some key employees leave the company, without having documentation of their knowledge, it is a big risk to the business.
Reduce costs by understanding the data and business processes in order to avoid having ineffective and inefficient systems.
Employee productivity increase with well-defined and understood systems and processes


![image](https://user-images.githubusercontent.com/68102477/121126663-e12fe380-c86b-11eb-8276-42bdad153c5f.png)


 
 ## Unknown Edge Cases
Any organization is going to face scenarios they were not expecting or were unprepared for.

How do we handle these? The two most important elements are:

By being flexible
By being adaptable
A well-planned Data Architecture that keeps track of all inputs and outputs helps reduce the likelihood of those scenarios

### Dynamic Definition of Data Architecture
Those same unexpected scenarios and unknowns mentioned above are also part of the reason that there is not really a single, agreed-upon definition of Data Architecture.

Think of all the components that make up a business

Business models
Strategies
Personnel
Processes
Systems
Technology
These are constantly changing. Big Data adds even more complexity.

Data Architecture must change along with that, hence the dynamic definition.
 
 ### The benefits of data architecture to almost every company
Eliminating silos
Scaling
Being adaptable
Being flexible
Reducing costs *Becoming more efficient

 ### Tips to succeed in Data Architect:
If you are not, learn to be a people person

Learn how departmental business units work

Be a continuous learner about newer technologies

Master the craft of improving the performance and scalability


 
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


![image](https://user-images.githubusercontent.com/68102477/121112412-b89bef80-c853-11eb-94d3-caefdc251930.png)

![image](https://user-images.githubusercontent.com/68102477/121112490-d2d5cd80-c853-11eb-94df-b5c11ac1f978.png)

## Getting Started in Snowflake
 
### Download Snowflake Client
Find your way to the Download button to get the Snowflake Client.

 ![image](https://user-images.githubusercontent.com/68102477/121123160-133e4700-c866-11eb-9b91-b55320ec7188.png)
 
 ## [Complete Snowflake Tutorial Lab](https://s3.amazonaws.com/snowflake-workshop-lab/Snowflake_free_trial_LabGuide.pdf)

At the top of the Snowflake UI, click the Worksheets tab. You should see the worksheet
with all the SQL we loaded in a prior step.
![image](https://user-images.githubusercontent.com/68102477/121143309-4392df00-c880-11eb-8260-da9789049aef.png)

