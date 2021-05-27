# Notes - What is Data Architecture


Data architects are senior visionaries who translate business requirements into technology requirements and define data standards and principles. 

The data architect is responsible for visualizing and designing an organization's enterprise data management framework. This framework describes the processes used to plan, specify, enable, create, acquire, maintain, use, archive, retrieve, control, and purge data. 

The data architect also "provides a standard common business vocabulary, expresses strategic requirements, outlines high-level integrated designs to meet those requirements, and aligns with enterprise strategy and related business architecture

## Data architect skills

**A foundation in systems development.** Data architects must understand the system development life cycle, project management approaches, and requirements, design, and test techniques, Lambert says.

**Data modeling and design.** This is the core skill of the data architect and the most requested skill in data architect job descriptions, according to Lambert, who notes that this often includes SQL development and database administration.

**Established and emerging data technologies.** Data architects need to understand established data management and reporting technologies, and have some knowledge of columnar and NoSQL databases, predictive analytics, data visualization, and unstructured data.

**Communication and political savvy.** Data architects need people skills. They must be articulate, persuasive, and good salespeople, Lambert says, and they must conceive and portray the big data picture to others.


![image](https://user-images.githubusercontent.com/68102477/119766066-b3f04680-bef7-11eb-9324-ffcf845bddb4.png)


## 

Data architecture goes way beyond database design. Technology is a big part of the role, but providing solutions to business problems, that is what is at the heart of data architecture.

Think outside of the limitations of technology. Learn the business role you will be working with. Shadow some employees, ask questions, sit in on some meetings, even read up on the field. Your business partners will appreciate you showing a real interest in their work, and your insight will help guide you in providing better architected solutions for your business partners.


![image](https://user-images.githubusercontent.com/68102477/119764768-5bb84500-bef5-11eb-85d1-0cbc41eda533.png)
**What do Architects do**


The core of data architecture is finding the best answers to the following question: **what is the business trying to do and how can data help?**

This means that data architecture focuses on both the business side and the technical side. As a data architect, it is your job to understand both sides and to live on both sides. You need to be the bridge between business users and technology.

It's time to step out of your IT comfort zone!

## Data Architecture Characteristics

The main characteristics are:

**Business need**

**Data Governance:** Set of rules and standards designed to ensure proper stewardship of data. Remember: Who owns the data, Who manages the data, and Who can access the data

**Data Integrity:** Ensuring the data is accurate and consistent

**Data Retention:** Focused on how long data must be held. Set by either company policy also by government or industry mandates

**Flexibility:** Database design characteristic focused on multiple uses for data

**Scalability:** Database design characteristic focused on user and data load levels


![image](https://user-images.githubusercontent.com/68102477/119765058-d08b7f00-bef5-11eb-99b1-e1713b45e523.png)


## Business needs First

![image](https://user-images.githubusercontent.com/68102477/119765261-498ad680-bef6-11eb-95f7-fdc4841ea104.png)

### Common business uses for databases

Three of the most common types: transactional, reporting, and computational.

![image](https://user-images.githubusercontent.com/68102477/119782109-202a7480-bf0f-11eb-9658-2bdba7721873.png)


**Transactional need:** the data is constantly being updated or added. 

The Online Transaction Processing (OLTP) database is designed to fulfill the transactional need.

![image](https://user-images.githubusercontent.com/68102477/119782236-43edba80-bf0f-11eb-9085-a1835e913753.png)


**Reporting need:** the need for reading. The data is not changed very frequently or rapidly. Online Analytical Processing (OLAP) database is designed to fulfill the reporting need. This kind of data exists in data warehouses where data may not be up to date but is stable for queries and reading tasks.


![image](https://user-images.githubusercontent.com/68102477/119782325-67b10080-bf0f-11eb-92ac-c5d15bc3a48e.png)


**Computational need:** the data is designed to facilitate heavy calculations.

![image](https://user-images.githubusercontent.com/68102477/119783596-b3b07500-bf10-11eb-91f9-60646d3c6046.png)


**OLTP vs. OLAP**
Think about how fast you want the data to be refreshed. If you need data to be refreshed rapidly and frequently, that is OLTP or transactional. If you don't need the data to be refreshed frequently, that's OLAP or reporting.

![image](https://user-images.githubusercontent.com/68102477/119782518-a0e97080-bf0f-11eb-8953-8f10c3cd8edc.png)

**Further Reading**

Below you will find a couple of great articles on OLAP vs OLTP databases.
[article-1](https://www.datawarehouse4u.info/OLTP-vs-OLAP.html)
[article-2](https://www.datawarehouse4u.info/OLTP-vs-OLAP.html)

**New terms**

Computational: a database designed to accommodate heavy or advanced mathematical calculations to be performed on the data

OLAP: Online analytical processing - a database designed for reporting and warehousing. Designed with the stability of data in mind. Data often updated in batches, can lag behind live data by minutes, hours, days, or even weeks

OLTP: Online transaction processing - a database designed for transactional needs. These databases are designed for constant updates and inputs of data

Reporting: in database terminology, reporting covers everything from static reports to dashboards. Reporting databases follow OLAP design

Transactional: a database designed with constant updating in mind. Follows OLTP design

Warehouse: in database terminology, a warehouse is an OLAP platform. Data warehouses are structured, meaning the data exists in column and row formatting


### Handling new customer's requests - ML, AI, Blockchain etc.....cutting edge technologies

Sometimes your client may send requests that don't fit their need. In this scenario, you can show them how much their idea would cost. You can also search for use cases similar and perform analysis to convince your client that their requests are not the best solution.

**sometimes just finding out that no one else is doing anything similar is enough**

![image](https://user-images.githubusercontent.com/68102477/119784935-0b9bab80-bf12-11eb-89c9-eb9c23218956.png)



## Data Governance

![image](https://user-images.githubusercontent.com/68102477/119765737-21e83e00-bef7-11eb-8885-000505fc2ac2.png)

![image](https://user-images.githubusercontent.com/68102477/119767026-768cb880-bef9-11eb-8f81-57a50d759f70.png)


### Examples: 

Approach of Data Modeling while ensuring Data Security

![image](https://user-images.githubusercontent.com/68102477/119774771-0b95ae80-bf06-11eb-9d54-4ca2ce5345ee.png)

![image](https://user-images.githubusercontent.com/68102477/119775103-81017f00-bf06-11eb-8b1c-4fbabfbec030.png)

![image](https://user-images.githubusercontent.com/68102477/119775179-9bd3f380-bf06-11eb-8771-c18856d289ac.png)

While there are many ways to secure sensitive data this walkthrough showed you an example using table-level security. In the table-level security method, you need to move the sensitive data to a separate table and then map it to the rest of the tables. You can then limit user access to the table with sensitive data.

For those not familiar with the concept of table-level security in a database, here is a brief overview of the concept.

In order to access a database, a user needs to be given rights. These rights can be applied to the database as a whole, or restricted down to parts of the database. So if we take the example from the video. As the database manager, I could give you (as a user) rights to view the entire database, meaning every table in the database. If you were a doctor or nurse at the clinic, I might even give you rights to add data or edit existing data in the database. That would be called database-level security since I am applying the rights at the database level.

At table-level security however, we apply rights a little differently. If you were an office administrator at this clinic, I might give you rights to view the Patient, Doctor, and Visit tables only, and deny your rights to view the Drug Test table. When you logged into the database, you would see all the data found in the Patient, Doctor, and Visit tables, and you would not be able to see anything in the Drug Test table.

This is a very basic method of data security, but it is the method I recommend using in this class (especially in your final project), as it achieves the goal of securing a single data element without having to go into more advanced data security methodology.

### Further Reading
You will be covering data governance in greater detail in one of the later courses, so I chose to give you a really stripped down view of data governance. It really is the level of data governance I deal with in my job, as the greater details you will be learning about later (Master Data Management, Data Dictionaries) they are really the purview of the Data Governance Committee in my job. However, if you want a little sneak peek of what else Data Governance has to offer, here is a pretty good article. [click to read](https://searchdatamanagement.techtarget.com/definition/data-governance#:~:text=Data%20governance%20DG%20is%20the,and%20doesn't%20get%20misused)

### New terms
Database Administrator (DBA): technical position, often part of the IT infrastructure, that maintains the day to day functions of a database
Data Governance: Set of rules and standards designed to ensure proper stewardship of data. Remember: Who owns the data, Who manages the data, and Who can access the data
Single source of truth: a set of data deemed to go to reference when conflicting data is found in the system
Subject matter expert (SME): professional deemed by the organization to be an expert in a certain arena

## Exercise: Data Governance

![image](https://user-images.githubusercontent.com/68102477/119777263-41886200-bf09-11eb-99d1-09e81b0790f2.png)

### 1. Which user rights setting prevents student from seeing grades?

### 2. How to build logic to allow teachers to only see grades in the classes in their respective departments ?

### Solution: Data Governance
This exercise was all about user access and protecting data. 

1. The important part to focus on is the fact that we want to prevent students from seeing grades.
The question states we want to prevent a student from seeing grades, so our focus should be on the table that holds grade data. And the question specifically mentions students, so other users should not be affected by this rule.

So for this question, the answer is to: **Revoke select rights on grade table for students.**

2. This one is a bit more complex, as it is not simply blocking access to a table. Instead, we are applying logic to limit access to specific data. Note, this kind of data security is usually performed at an application level, over top of the database security.

![image](https://user-images.githubusercontent.com/68102477/119777523-a17f0880-bf09-11eb-9aec-828151e3161f.png)

Using the picture above as reference: If the teacher's Department ID does not match the Class Number's Department ID, then Grade for that Class Number should not be visible to the teacher.


## Scalability and Flexibility

![image](https://user-images.githubusercontent.com/68102477/119765806-3af0ef00-bef7-11eb-83fa-bc5587ffd6d3.png)

## Scalability

scalability is all about the amount of load, or demand, being given to the database. Whether it be more users, more data, or both, you need to be able to consider design options that will allow your database to scale up to the meet the need demand.

![image](https://user-images.githubusercontent.com/68102477/119779179-b9578c00-bf0b-11eb-9541-ed5f291cd621.png)

![image](https://user-images.githubusercontent.com/68102477/119779450-0b98ad00-bf0c-11eb-98bd-accc493ea06e.png)

### There are two approaches to scalability: sharding and replicating.

### Replicated database

Replicated databases are copies of the original database on separate servers. It offloads the main database by sending users to the replicated databases. Replication is for reading, not writing. Replication has a lag time, so the copies will not be as up to date as the original.
**If the issue is number of users - optimizing Reading** 

![image](https://user-images.githubusercontent.com/68102477/119779707-59adb080-bf0c-11eb-806d-324c79717a79.png)


### Sharded database

Sharding means to split the data across multiple servers. It is a great method for writing and inputting data because you split the writing load onto multiple databases. But reading from sharded databases is very slow since you have to visit multiple databases to retrieve the information.

**If the issue is amount of data - optimizing Writing**

![image](https://user-images.githubusercontent.com/68102477/119779882-819d1400-bf0c-11eb-85e0-c4b7d583c811.png)

![image](https://user-images.githubusercontent.com/68102477/119780042-ae512b80-bf0c-11eb-8b20-b82730ee3936.png)


## Flexibility

Flexibility is all about designing the database to meet multiple needs. This a is a common problem, so ask lots of questions in the early design phase to try to get a head start on this

![image](https://user-images.githubusercontent.com/68102477/119779282-db510e80-bf0b-11eb-9506-f012867e0276.png)

![image](https://user-images.githubusercontent.com/68102477/119780153-d17bdb00-bf0c-11eb-9af4-56b9a5d40029.png)

**Further Reading**

[Flexible relational schema](https://www.help.com/portfolio/tackling-flexible-schema-relational-database/)

## Exercise: Scalability and Flexibility

### Instruction

The superintendents of two districts have been asked to allow both students and parents to have read access to the database this year. The superintendents estimate this will result in an additional 15,000 to 30,000 new users accessing the database. They are concerned that this will cause a problem with database performance. You have been asked to explain how you plan to scale the database up to meet this increased user demand.

### Answer: 
The answer to this question lies in the fact the superintendents are concerned about meeting the demand for 10's of thousands of new users who will be reading the data.

And an increase in data reading demand should indicate database replication as the best solution to the problem. Remember, sharding is used when the amount of data being written to the system is the concern.


## Retention

![image](https://user-images.githubusercontent.com/68102477/119765841-48a67480-bef7-11eb-91db-68e40179557e.png)

![image](https://user-images.githubusercontent.com/68102477/119767084-9623e100-bef9-11eb-8f93-e1138230bb79.png)



## Data Integrity

![image](https://user-images.githubusercontent.com/68102477/119765338-6d4e1c80-bef6-11eb-9237-d5da9e3d9d2f.png)

The main solution to the data integrity issue is to ensure information is only entered once. In addition, assigning unique IDs as an identifier ensures that each row is unique. This also increases data flexibility.

### Further Reading

[10 characteristics of data architecture](https://www.eckerson.com/articles/ten-characteristics-of-a-modern-data-architecture)




