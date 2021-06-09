# Operational Data Store 

## Lesson Overview

We will see how ER models bring together Data Dictionary, Data flows, events, and actions to allow the Data Architect to visualize the data in the enterprise
We will look at using master data categories to help us get to a single version of data truth.
We will look at how Normalization eliminates redundancies in data
We will look a 2 ways of actually moving data from staging to ODS.
And finally, we will see how to cleanse data anomalies


## Definitions


### Operational Data 

Operational Data  is exactly what it sounds like - data that is produced by your organization's day to day operations. Things like customer, inventory, and purchase data fall into this category. This type of data is pretty straightforward and will generally look the same for most organizations. If you want to know the most up to date information on something - you’re using Operational Data! Operational Data Systems support high-volume low-latency access, called Online Transactional Processing tables, or OLTP, where you want to create, read, update, or delete one piece of data at a time.

**An operational data store** (or "ODS") is used for operational reporting and as a source of data for the Enterprise Data Warehouse (EDW).

The [Operational Data Store](https://en.wikipedia.org/wiki/Operational_data_store) is the environment where data from different transactional and operational databases are integrated into a single enterprise model.

 ODS = IDM (Integrated Data Model)
 
### EDW

[Enterprise Data warehouse or "EDW"](https://en.wikipedia.org/wiki/Data_warehouse)
is a system used for reporting and data analysis and is considered a core component of business intelligence. DWs are central repositories of integrated data from one or more disparate sources. They store current and historical data in one single place that are used for creating analytical reports for workers throughout the enterprise.

The data stored in the warehouse is uploaded from the operational systems (such as marketing or sales). The data may pass through an operational data store and may require data cleansing[2] for additional operations to ensure data quality before it is used in the DW for reporting.

Extract, transform, load (ETL) and extract, load, transform (ELT) are the two main approaches used to build a data warehouse system.

### DataLake

[DataLake](https://en.wikipedia.org/wiki/Data_lake)
A data lake is a system or repository of data stored in its natural/raw format.
Looks like our Staging layer is a Data Lake

### DataMarts


### DataHub
[DataHub](https://en.wikipedia.org/wiki/Data_hub)
A data hub is a collection of data from multiple sources organized for distribution and sharing. Generally this data distribution is in the form of a [hub and spoke architecture.](https://en.wikipedia.org/wiki/Spoke%E2%80%93hub_distribution_paradigm)
The spoke-hub distribution paradigm is a form of transport topology optimization in which traffic planners organize routes as a series of "spokes" that connect outlying points to a central "hub".

A data hub differs from a data warehouse in that it is generally unintegrated and often at different grains. It differs from an operational data store because a data hub does not need to be limited to operational data.

A data hub differs from a data lake by homogenizing data and possibly serving data in multiple desired formats, rather than simply storing it in one place, and by adding other value to the data such as de-duplication, quality, security, and a standardized set of query services. A Data Lake tends to store data in one place for availability, and allow/require the consumer to process or add value to the data.

Data Hubs are ideally the "go-to" place for data within an enterprise, so that many point-to-point connections between callers and data suppliers do not need to be made, and so that the Data Hub organization can negotiate deliverables and schedules with various data enclave teams, rather than being an organizational free-for-all as different teams try to get new services and features from many other teams.


![image](https://user-images.githubusercontent.com/68102477/121339862-4239e300-c962-11eb-9896-9dfeb00c17f1.png)

![image](https://user-images.githubusercontent.com/68102477/121339896-4ebe3b80-c962-11eb-804e-2cd7416fe5dc.png)

## What is an Operational Data Store
Once the data sources have been identified and data collected, the ODS layer handles the integration of all the source data sets into a coherent relational database

(O)perational (D)ata (S)tore
Has two main functions:
to keep a clean copy of data sets coming from multiple sources
to keep this as a source for the data warehouse.

What happens during the ODS stage?
While staging functions as a data acquisition layer from source systems, the ODS layer actually handles the integration of all the source data sets into a coherent relational database
Because the data originates from multiple sources, the integration often involves cleaning, resolving redundancy, and checking against business rules for integrity.
This enables end-users to have operational reporting functionality. For example… If Walmart operations want to know which products are running out of shelves and refill the stock, they need to run queries against the ODS.






