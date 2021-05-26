# Notes - Metadata Management

## Lesson Objectives:

Create Conceptual and Logical Enterprise Data Models

Understand the different types of metadata: business, technical and operational metadata

Understand the capabilities and components of a Metadata Management System as well and the role of business and technical teams

Create an Enterprise Data Catalog

![image](https://user-images.githubusercontent.com/68102477/119624670-b8135a00-be4c-11eb-8c5e-61d21d72a17d.png)


## What is Metadata Management

**Metadata** provides information about data, such as definitions, rules, format, data types. 

**Metadata Management is about capturing metadata scattered across the enterprise in a central repository that can be easily accessed by anyone in the enterprise.**
Business teams in different departments use the metadata management system in their day to day activities to find data, conduct processes, and create reports. 

![image](https://user-images.githubusercontent.com/68102477/119623493-92d21c00-be4b-11eb-949d-76acdd678138.png)

![image](https://user-images.githubusercontent.com/68102477/119623566-a67d8280-be4b-11eb-8d9a-baeb57d32fa7.png)


### Some important concepts in Metadata Management:

**Enterprise Data Model** provides a holistic view of the data in a company. It contains information about the structure of data, like entities, attributes, and relationships. Typically you have conceptual and logical Enterprise Data Models. 
Since the data is physically contained in many systems, there is no Enterprise Physical Data Model.

**Enterprise Data Catalog** is a consolidation of all the metadata in an enterprise. It contains information about the content of data like business glossaries, business rules, data dictionaries, data policies, data lineage...etc. Enterprise Data Catalog resides in a metadata repository which is a part of the Metadata Management System.

**Enterprise Data Model** is the foundation for creating an Enterprise Data Catalog. You first create an Enterprise Data Model. Then you add various metadata to the entities and attributes in an Enterprise Data Model to build an Enterprise Data Catalog.

![image](https://user-images.githubusercontent.com/68102477/119623879-f1979580-be4b-11eb-8e68-f1602684682d.png)

![image](https://user-images.githubusercontent.com/68102477/119623973-08d68300-be4c-11eb-90d1-5fed2f2d9798.png)

![image](https://user-images.githubusercontent.com/68102477/119624191-37ecf480-be4c-11eb-8758-9a230cf0b735.png)



### Different ways that people use a Metadata Management System:

Different people collaborate with each other to author different pieces of metadata for a data domain

People curate the content by categorizing and classifying data using tags and taxonomies so that information can be found quickly in the Metadata Management System

Users review the different metadata in a Metadata Management System and rate the content and quality

![image](https://user-images.githubusercontent.com/68102477/119623795-dfb5f280-be4b-11eb-9a63-8cb9f6869ba9.png)


### New terms
Metadata information that describes other data
Metadata Repository is a database that stores metadata
Enterprise Data Catalog is a consolidation or inventory of all the metadata

## Why Metadata Management Is Important ?

![image](https://user-images.githubusercontent.com/68102477/119643852-9bcce880-be5f-11eb-8b53-ee81764c4ff0.png)

### Metadata management is critical to enabling good data governance.

Metadata is information about your data. Metadata helps you understand different aspects of the data in your company. Some of the insights you can gain from metadata:

What data exists in the company, and which IT system contains this data?

What are the business level definition and descriptions of data elements?

How good is the data quality of data elements and entities? What are the data quality thresholds?

Who are the users of the data? What do they use the data for? Who are the data owners and data stewards?

Who can access the data? What kind of access do they have?

What are the business and data quality rules and transformations applied to the data?

Where is the data created? Where is it stored? How is it published? Is it archived or deleted?

### Some of the key impacts of a good metadata management system:

With proper metadata management, companies **reduce the reliance on subject matter experts/IT personnel to identify the location of the information.**

Metadata management enables the creation of enterprise-level data definitions, **proper documentation of business rules, usage, and policies**

Metadata that was once scattered across the enterprise is now captured in a single repository that can be easily accessed by anyone in the company resulting in significant time savings and improved productivity

Metadata management identifies and eliminates redundancies and inconsistencies in data and processes.

### New terms
Data Owner Person who is responsible for data in a particular Data Domain

Data Quality Threshold Categorizes the data into different data quality levels

### Further reading
[role played by metadata in effective Data Governance](https://tdan.com/metadata-in-data-governance/1610)


## Enterprise Data Model

![image](https://user-images.githubusercontent.com/68102477/119646493-93c27800-be62-11eb-834b-fef687ec2be6.png)

![image](https://user-images.githubusercontent.com/68102477/119646620-b9e81800-be62-11eb-873f-9d0b2efed826.png)

![image](https://user-images.githubusercontent.com/68102477/119646657-c2405300-be62-11eb-9ddc-d19011bc40aa.png)

![image](https://user-images.githubusercontent.com/68102477/119646670-c66c7080-be62-11eb-9433-189f341939ba.png)


Enterprise Data Models provide a standardized and holistic view of data in the enterprise, which is the key to good data governance. To create an Enterprise Data Model, you need to have an understanding of the high-level business processes. This information can be gathered from various business process documents and interviewing people in different departments.

Enterprise Conceptual Data Model consists of entities and relationships. Enterprise Logical Data Model expands on the enterprise conceptual data model by adding attributes, primary and foreign keys to each entity.

You should create the Enterprise Data Models using the data modeling tool(s) available in your company. Steps to create an Enterprise Conceptual Data Model:

Map out all the different subject areas in the company.
Identify the different entities in each subject area.
Identify the relationship between entities.
Some entities can exist in multiple subject areas.
Refine the data model by modifying the entities and relationships based on a review of data, DDLs, data models, and data dictionaries for each system.
Part 2 - Enterprise Logical Data Model

Correction: in the video, the instructor said: "Customer ID and Store ID are foreign keys that point to customer and order tables.". It should be "Customer ID and Store ID are foreign keys that point to customer and store tables."

Example logical data model

Example logical data model


After you create the Enterprise Conceptual Data Model, you will expand on that work to create the Enterprise Logical Data Model. The information you collected from business process documents, interviews, data models, DDLs, and data dictionaries will be used as the basis for this exercise. Steps to create an Enterprise Logical Data Model:

Add attributes to each entity.
Add primary key and foreign key relationships.
Add cardinalities such as one to one, zero to one, etc.
New terms
Enterprise Conceptual Data Model Provides a holistic view of all the data in an enterprise and consists of entities and relationships
Enterprise Logical Data Model expands on the Enterprise Conceptual Data Model by adding attributes, primary and foreign keys, and cardinalities
Entity is an object that represents a person, place, thing, event, or concept
Primary Key uniquely identifies each record in a table
Foreign Key set of attributes that refer (or links) to the primary key in another table
Cardinality type of relationship(one or many) between a row of one table and a row of another table
Subject Area is a business functional area or business domain

### Further reading
[examples of Enterprise Data Models](http://www.databaseanswers.org/downloads/tutorial_in_enterprise_data_modelling_by_example.pdf)



## Types of Metadata

There are three different types of metadata - business, technical, and operational.

### Business Metadata

Business metadata **provides the business context to the data.**

Some key business metadata:

**Business glossary** is a list of business terms and definitions.

**Business rules** are applied to data to enable different business processes.

**Data quality metrics** refers to the data quality score and thresholds assigned to different data elements and entities.

**Data owner and data steward** for each data domain.

**Classification** and tagging of data. Some of the common classifications are **data domain, security, and criticality.**

**Access rights and privileges** define who can access the data, what kind of access they have like read, write..etc

**Retention policy** describes how long the data should be kept for business needs.


### Technical metadata

Technical metadata describes **how the data is defined, organized, and processed from a database and technology standpoint.**

**Some key technical metadata:**

**Conceptual, logical, and physical data models** describe how the data is organized from a business and database standpoint.

DDL or Data Definition Language is the script that creates the tables in the database. DDL is specific to the database.

Data dictionary is used by the technical teams to understand the technical details of the data elements like table name, column name, data type, sample values, and constraints.

Data lineage shows the details of which source table(s) and column(s) a given target column is loaded from.

Transformations are applied to convert the data to a different structure or implement business and data quality rules.

Based on the access policies defined in the business metadata, different access groups are created, and users are assigned to these access groups.


### Operational metadata
Operational metadata describes the technical job execution details. 

**Some key operational metadata:**

List of data load jobs and the details of the tables into which these jobs load the data.

Execution statistics of batch jobs such as when the job started, when it finished, job status, any errors, number of records loaded..etc.

Usage metrics explain when someone queries a table and what query is executed.

Job logs contain the details of all the processes executed during a batch job along with details of the error message, if any.

List of backup and archival processes created based on requirements defined in the retention policies


### New terms
Business metadata provides the business context to the data.
Technical metadata describes how the data is defined, organized, and processed from a database and technology standpoint.
Operational metadata describes the technical job execution details.
Business Glossary defines terms across a business domain.
Data Dictionary contains information about columns in a data set.

### Further reading
[additional information on what to include in a good business glossary](https://tdwi.org/articles/2016/02/16/data-governance-glossary-missing-elements.aspx)


## Review - Azure Data Catalog 
[Azure Data Catalog](https://docs.microsoft.com/en-us/azure/data-catalog/overview)


## Metadata Management System

All the different metadata types are integrated and loaded into a Metadata Management System that can be easily accessed by anyone in the company. Some key uses of the Metadata Management System:

Anyone in the company can search the metadata system to identify the location of data and reports they are looking for.

All aspects of data like rules, definitions, lifecycle, lineage, ownership, quality, and usage are documented. This, in essence, provides a 360-degree view of data.

Links business to technology by providing the ability to trace a business process to data entities and elements and the systems and tables where the data resides.

To achieve the different capabilities and functionality of a metadata management system, you can either buy a vendor product or build your own custom technology solution. The technology solution for Metadata Management System has the following basic components:

User interface is used by business, technical and governance teams to create, curate, govern, and search for metadata.

Central repository, where all the metadata is stored.

Connectors enables automated metadata ingestion from different documents, databases, reporting tools, data modeling tools, ETL tools, and applications.

Processing engine receives and processes the requests from the user interface, retrieves the necessary metadata from the repository, and loads the data retrieved by the connectors.

Steps involved in creating a Metadata Management System:

Design an Enterprise Data Catalog based on the Enterprise Logical Data Model. This is done by identifying any existing business metadata, mapping each entity to all the systems where it resides, mapping attributes to tables and columns in different systems, and locating any existing technical metadata for the systems identified.

Build an ingestion process to automatically parse and retrieve metadata from different sources and load it into the Metadata Management System.

Curate the metadata in the user interface of the Metadata Management System to fill in the missing pieces that don't exist in the systems.

Different people involved in a Metadata Management System have different roles and responsibilities. Business subject matter experts create business metadata. Technical developers and architects create technical and operational metadata and create automated processes to ingest existing metadata into the Metadata Management System. Data Stewards in the governance teams review and approve the metadata created by different people to ensure metadata is consistent and follows the standards.

New terms
Metadata Management System enables the consolidation, storage, and exploration of metadata.
ETL abbreviation for Extraction, Transformation, and Load. Gathers data from multiple source systems, consolidates, and loads into a destination system.

Further reading
[understand the different vendor products available for metadata management](https://solutionsreview.com/data-management/the-best-metadata-management-tools/)



