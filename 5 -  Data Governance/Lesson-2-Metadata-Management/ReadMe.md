# Notes - Metadata Management

## Lesson Objectives:

1. What is Metadata and why Metadata Management is important.

2. Create an **Enterprise Data Model**, providing a holistic view of the data in a company.

3. Understand the different **types of metadata**: business, technical and operational metadata

4. Understand the capabilities and components of a **Metadata Management System** as well and the role of business and technical teams

5. Create an **Enterprise Data Catalog**

![image](https://user-images.githubusercontent.com/68102477/119624670-b8135a00-be4c-11eb-8c5e-61d21d72a17d.png)


## 1. What is Metadata Management

**Metadata** provides information about data, such as definitions, rules, format, data types. 

**Metadata Management is about capturing metadata scattered across the enterprise in a central repository that can be easily accessed by anyone in the enterprise.**
Business teams in different departments use the metadata management system in their day to day activities to find data, conduct processes, and create reports. 

![image](https://user-images.githubusercontent.com/68102477/119623493-92d21c00-be4b-11eb-949d-76acdd678138.png)

![image](https://user-images.githubusercontent.com/68102477/119623566-a67d8280-be4b-11eb-8d9a-baeb57d32fa7.png)


Different people collaborate with each other to author different pieces of metadata for a data domain

People curate the content by categorizing and classifying data using tags and taxonomies so that information can be found quickly in the Metadata Management System

Users review the different metadata in a Metadata Management System and rate the content and quality


![image](https://user-images.githubusercontent.com/68102477/125906140-89029c40-a5da-4cc3-9418-9e200606e4e8.png)

### Some important concepts in Metadata Management:

**Enterprise Data Model** provides a holistic view of the data in a company. It contains information about the structure of data, like entities, attributes, and relationships. Typically you have conceptual and logical Enterprise Data Models. 
Since the data is physically contained in many systems, there is no Enterprise Physical Data Model.

**Enterprise Data Catalog** is a consolidation of all the metadata in an enterprise. It contains information about the content of data like business glossaries, business rules, data dictionaries, data policies, data lineage...etc. Enterprise Data Catalog resides in a metadata repository which is a part of the Metadata Management System.

**Enterprise Data Model is the foundation for creating an Enterprise Data Catalog. You first create an Enterprise Data Model. Then you add various metadata to the entities and attributes in an Enterprise Data Model to build an Enterprise Data Catalog.**

![image](https://user-images.githubusercontent.com/68102477/119623879-f1979580-be4b-11eb-8e68-f1602684682d.png)

![image](https://user-images.githubusercontent.com/68102477/119623973-08d68300-be4c-11eb-90d1-5fed2f2d9798.png)

![image](https://user-images.githubusercontent.com/68102477/119624191-37ecf480-be4c-11eb-8758-9a230cf0b735.png)


### New terms

Metadata - information that describes other data

Metadata Repository - is a database that stores metadata

Enterprise Data Catalog - is a consolidation or inventory of all the metadata

## Why Metadata Management Is Important ?

![image](https://user-images.githubusercontent.com/68102477/125907413-4ceb0405-859d-4da6-a11f-8aa3269808aa.png)

![image](https://user-images.githubusercontent.com/68102477/125907751-3720eaca-81fc-4046-a12e-634432e323b5.png)

![image](https://user-images.githubusercontent.com/68102477/125907885-e84745e4-5657-471c-b3c3-2a76f3135ba0.png)

![image](https://user-images.githubusercontent.com/68102477/125908657-bb3c0228-eba8-4863-85c3-e1524b634973.png)


Metadata is information about your data. Metadata helps you understand different aspects of the data in your company. Some of the insights you can gain from metadata:

What data exists in the company, and which IT system contains this data?

What are the business level definition and descriptions of data elements?

How good is the data quality of data elements and entities? What are the data quality thresholds?

Who are the users of the data? What do they use the data for? Who are the data owners and data stewards?

Who can access the data? What kind of access do they have?

What are the business and data quality rules and transformations applied to the data?

Where is the data created? Where is it stored? How is it published? Is it archived or deleted?


With proper metadata management, companies **reduce the reliance on subject matter experts/IT personnel to identify the location of the information.**

Metadata management enables the creation of enterprise-level data definitions, **proper documentation of business rules, usage, and policies**

Metadata that was once scattered across the enterprise is now captured in a single repository that can be easily accessed by anyone in the company resulting in significant time savings and improved productivity

Metadata management identifies and eliminates redundancies and inconsistencies in data and processes.

### New terms

Data Owner - Person who is responsible for data in a particular Data Domain

Data Quality Threshold - Categorizes the data into different data quality levels

### Further reading
[role played by metadata in effective Data Governance](https://tdan.com/metadata-in-data-governance/1610)


## 2. Enterprise Data Models (Conceptual and logical)

![image](https://user-images.githubusercontent.com/68102477/125899953-c8ed26c4-551c-4013-901a-f5326034273d.png)

![image](https://user-images.githubusercontent.com/68102477/125900290-ec1bee56-583d-4214-8145-4e1fa4ccda53.png)

![image](https://user-images.githubusercontent.com/68102477/125900347-39dcf209-db3a-45e2-89c2-fba09d364810.png)

![image](https://user-images.githubusercontent.com/68102477/125900517-712520c3-bbbb-4dd7-a0c7-44c1edad2c55.png)

### Now Integrate the Entities from different subject areas:

![image](https://user-images.githubusercontent.com/68102477/125900676-5ff96078-7aaa-491a-a9fd-0fb3da2d2290.png)

### Now Refine

![image](https://user-images.githubusercontent.com/68102477/125900777-40c0acb6-0d23-479b-b126-54ab1c6007b6.png)

### Add Entities

![image](https://user-images.githubusercontent.com/68102477/125900943-98795588-4906-41ce-a86c-ac83cdb4ace7.png)

### Update Conceptual Data Model

![image](https://user-images.githubusercontent.com/68102477/125900992-4792987d-2942-4d63-82cc-671e0325fc42.png)


Enterprise Data Models provide a standardized and holistic view of data in the enterprise, which is the key to good data governance. To create an Enterprise Data Model, you need to have an understanding of the high-level business processes. This information can be gathered from various business process documents and interviewing people in different departments.

Enterprise Conceptual Data Model consists of entities and relationships. Enterprise Logical Data Model expands on the enterprise conceptual data model by adding attributes, primary and foreign keys to each entity.

You should create the Enterprise Data Models using the data modeling tool(s) available in your company. Steps to create an Enterprise Conceptual Data Model:

Map out all the different subject areas in the company.

Identify the different entities in each subject area.

Identify the relationship between entities.

Some entities can exist in multiple subject areas.

Refine the data model by modifying the entities and relationships based on a review of data, DDLs, data models, and data dictionaries for each system.

## Enterprise LOGICAL Data Model

![image](https://user-images.githubusercontent.com/68102477/125908972-6678ed92-7d17-4397-98db-593d31d00423.png)


After you create the Enterprise Conceptual Data Model, you will expand on that work to create the Enterprise Logical Data Model. The information you collected from business process documents, interviews, data models, DDLs, and data dictionaries will be used as the basis for this exercise. Steps to create an Enterprise Logical Data Model:

Add attributes to each entity.

Add primary key and foreign key relationships.

Add cardinalities such as one to one, zero to one, etc.

### Summary (Conceptual and Logical Enterprise Data Models)

Enterprise Conceptual Data Model - Provides a holistic view of all the data in an enterprise and consists of entities and relationships

Enterprise Logical Data Model - expands on the Enterprise Conceptual Data Model by adding attributes, primary and foreign keys, and cardinalities

Cardinality - type of relationship(one or many) between a row of one table and a row of another table

Subject Area is a business functional area or business domain


### Further reading
[examples of Enterprise Data Models](http://www.databaseanswers.org/downloads/tutorial_in_enterprise_data_modelling_by_example.pdf)


### Exercise

Document the Enterprise Data model for an online music store, called Musikland. 

Create an Enterprise Conceptual Data Model following the process we've just learned about. 

Take it a step further and expand the Conceptual model to create an Enterprise Logical Data Model by adding primary and foreign keys, attributes, and cardinalities.

**Tables**

employee table stores employee data.

customer table stores customer data.

invoice & invoiceline tables store invoice data.

artist table stores artist data.

album table stores data about albums.

mediatype table stores media types such as MPEG audio and AAC audio files.

genre table stores music types such as rock, jazz, metal, etc.

track table stores song data.

playlist & playlisttrack tables store data about playlists.


**Understand that there are four subject areas:**

Music Inventory

Billing

Customer Service

Playlist Management

### Solution

**Identified Entities and Relationships**

![image](https://user-images.githubusercontent.com/68102477/125911304-7a7c1951-6dd0-4881-9f88-c454e8734bf9.png)

**Enterprise Conceptual Model:**

![image](https://user-images.githubusercontent.com/68102477/125911334-2ae5aba4-270d-4a43-ba86-b9bdc7ed7ad4.png)

**Refined entities and relationships**

![image](https://user-images.githubusercontent.com/68102477/125911379-e127d3b3-733a-4ce1-9762-b03bc641538e.png)

**Refined Enterprise Conceptual Data Model**

![image](https://user-images.githubusercontent.com/68102477/125911425-1a894fae-7964-4306-b7d6-5ca8e111c50a.png)

**Enterprise Logical Data Model**

![image](https://user-images.githubusercontent.com/68102477/125911552-5b9b31c9-c0fe-4bf8-aa57-3a44bd655e0c.png)


## 3. TYPES OF METADATA

There are three different types of metadata - business, technical, and operational.

![image](https://user-images.githubusercontent.com/68102477/125911951-f4411b17-4774-4d87-b236-061bd00abb9a.png)

### Business Metadata

Business metadata **provides the business context to the data.**

![image](https://user-images.githubusercontent.com/68102477/125915487-79ac3006-6f6b-48a9-aead-aa236fefed05.png)

![image](https://user-images.githubusercontent.com/68102477/125915594-f1c28229-2f09-499f-a207-9bbaea59ce39.png)

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

![image](https://user-images.githubusercontent.com/68102477/125922365-d00fe1d6-f761-4332-9c80-74631cff9131.png)

![image](https://user-images.githubusercontent.com/68102477/125922501-7443d30c-17ec-42bf-a40a-580b86fda395.png)

**Some key technical metadata:**

**Conceptual, logical, and physical data models** describe how the data is organized from a business and database standpoint.

**DDL** or Data Definition Language is the script that creates the tables in the database. DDL is specific to the database.

**Data dictionary** is used by the technical teams to understand the technical details of the data elements like table name, column name, data type, sample values, and constraints.

**Data lineage** shows the details of which source table(s) and column(s) a given target column is loaded from.

**Transformations** are applied to convert the data to a different structure or implement business and data quality rules.

Based on the access policies defined in the business metadata, different **access groups** are created, and users are assigned to these access groups.


### Operational metadata

Operational metadata describes the technical job execution details. 

![image](https://user-images.githubusercontent.com/68102477/125924136-c714da6e-a3c8-45d4-89a0-f563fde8cf09.png)

![image](https://user-images.githubusercontent.com/68102477/125924168-40729105-de8b-4377-8f8b-1e1e81a20a40.png)

![image](https://user-images.githubusercontent.com/68102477/125924289-f91b47dc-8e59-484e-bd95-ad1f198bbb43.png)

**Some key operational metadata:**

List of data load jobs and the details of the tables into which these jobs load the data.

Execution statistics of batch jobs such as when the job started, when it finished, job status, any errors, number of records loaded..etc.

Usage metrics explain when someone queries a table and what query is executed.

Job logs contain the details of all the processes executed during a batch job along with details of the error message, if any.

List of backup and archival processes created based on requirements defined in the retention policies


### New terms

Business metadata - provides the business context to the data.

Technical metadata - describes how the data is defined, organized, and processed from a database and technology standpoint.

Operational metadata - describes the technical job execution details.

Business Glossary - defines terms across a business domain.

Data Dictionary - contains information about columns in a data set.

![image](https://user-images.githubusercontent.com/68102477/125925377-5d630201-615a-49aa-938f-937875a52adb.png)

### Exercise: Metadata

Gather the metadata for the following Logical Data Model

![image](https://user-images.githubusercontent.com/68102477/125928455-606ffa3f-0bab-4ceb-87c6-880f607d036b.png)

### Solution

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


## 5. Enterprise Data Catalog

EDM provides us with information around the structure of the data while EDC is a consolidation of metadata around the content of the data.
