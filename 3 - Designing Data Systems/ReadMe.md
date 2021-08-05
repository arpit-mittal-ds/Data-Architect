# Designing Data Systems

Learnt to design enterprise data architecture. 

Built a cloud based data warehouse with Snowflake. 

Evaluated various data assets of an organization and characteristics of the data sources, designed a staging area for ingesting varieties of data coming from source systems, and designed an Operational Data Store (ODS). 

Finally, designed OLAP dimensional data models, designed ELT data processing which is capable of moving data from an ODS to a data warehouse, and wrote SQL queries for the purpose of building reports.

### Further Reading

[Enterprise Data Architecture](https://rusty-alderson.medium.com/enterprise-data-architecture-c5c579b54abe)

[A good source for education and research to acquire the knowledge and skills is available at “The Data warehouse Institute”](https://tdwi.org/Home.aspx)

[Data warehouse related job postings](https://jobs.tdwi.org/)

[Everything related to data architecture strategies and advancements](https://www.dataversity.net/)


[New vendor products and how they fit in the emerging Data warehouse Architectures](https://a16z.com/2020/10/15/the-emerging-architectures-for-modern-data-infrastructure/)

[Articulated the best practices of Enterprise Data Architectureuild-a-data-architecture-to-drive-innovation-today-and-tomorrow](https://www.mckinsey.com/business-functions/mckinsey-digital/our-insights/how-to-b)

[Why Data Warehouse Projects Fail](https://www.timmitchell.net/post/2017/01/10/why-data-warehouse-projects-fail/)


### A data warehouse was first formally defined by Bill Inmon in this way: 

**“A data warehouse is a subject-oriented, integrated, time-variant, and nonvolatile collection of data in support of management’s decision-making process.”**

**Subject-oriented** implies that the data is organized around subjects such as customers, products, sales, etc. 

The data warehouse is **integrated** in the sense that it integrates data from a variety of operational sources and a variety of formats such as relational database management systems, legacy database management systems, and flat files. 

**Time variant** refers to the fact that the data warehouse essentially stores a time series of **periodic snapshots**. Operational data is always up-to-date and represents the most recent state of the data elements, whereas a **data warehouse is not necessarily up-to-date but represents the state at some specific moment(s) in time**. 

**Non-volatile** implies that the data is primarily **read-only and will thus not be frequently updated or deleted over time.** Hence, the two most important types of data manipulation operations for a data warehouse are data loading and data retrieval.

### A data mart 

is a scaled-down version of a data warehouse aimed at meeting the information needs of a homogeneous small group of end users such as a department or business unit (marketing, finance, logistics, or human resources). It typically contains some form of **aggregated data** and is used as the primary source for **report generation and analysis** by this end user group.

There are various reasons for setting up data marts. First of all, they **provide focused content**, such as finance, sales, or accounting information, in a format tailored to the user group at hand. 

They also **improve query performance** by offloading complex queries, and therefore workloads, from other data sources, such as a data warehouse. 

Data marts can be **located closer to the end users, alleviating heavy network traffic and giving them more control.**

Finally, certain reporting tools assume predefined data structures which can be provided by a customized data mart. In order to denote the contrast with a data mart, a full-blown data warehouse is often called an enterprise data warehouse to emphasize the organization-wide aspect.

### An operational data store (ODS) 

is another way of dealing with the **disadvantage of data warehouses not containing up-to-date data.** 

An ODS can be considered a staging area that provides query facilities. A normal staging area is only meant for receiving the operational data from the transactional sources for the sake of transforming the data and loading it into the data warehouse. An ODS also offers this functionality, **but in addition, it can be queried directly.**

In this way, analysis tools that need data that is closer to real time can query the ODS data as it is received from the respective source systems, before time-consuming transformation and loading operations. The ODS then only **provides access to the current, fine-grained and non-aggregated data, which can be queried in an integrated manner without burdening the transactional systems.** However, more complex analyses requiring high-volume historical and/or aggregated data are still conducted on the actual data warehouse.

### The data lake concept 

became known as part of the big data and analytics trend. Although both data warehouses and data lakes are essentially data repositories, a key distinguishing property of a data lake is that it **stores raw data in its native format, which could be structured, unstructured, or semi-structured.** This makes data lakes fit for more exotic and “bulk” data types that we generally do not find in data warehouses, such as social media feeds, clickstreams, server logs, and sensor data. 

A data lake collects data emanating from operational sources “as is,” often without knowing upfront which analyses will be performed on it, or even whether the data will ever be involved in analysis at all. For this reason, **either no or only very limited transformations (formatting, cleansing) are performed on the data before it enters the data lake.** Consequently, when the data is tapped from the data lake to be analyzed, quite a bit of processing will typically be required before it is fit for analysis. 

The **data schema definitions are only determined when the data is read (schema-on-read) instead of when the data is loaded (schema-on-write) as is the case for a data warehouse.** 

Storage costs for data lakes are also relatively low because most of the implementations are open source solutions that can be easily installed on low-cost commodity hardware. 

Since a data warehouse assumes a predefined structure, it is less agile compared to a data lake, which has no structure. Also, data warehouses have been around for quite some time already, which automatically implies that their security facilities are more mature. 

Finally, in terms of users, a data warehouse is targeted toward decision makers at the middle and top management level, whereas a data lake requires a data scientist, which is a more specialized profile in terms of data handling and analysis.



