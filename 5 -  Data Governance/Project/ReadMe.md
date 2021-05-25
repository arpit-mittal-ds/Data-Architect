

![image](https://user-images.githubusercontent.com/68102477/119439498-d2263d00-bd65-11eb-807d-af79e6ece154.png)

# Data Governance at SneakerPark

Implemented Data Governance solutions for an online shoe reseller SneakerPark to better manage their data now and in the future. 

Created an Enterprise Data Model that provides a holistic view of all the data in their systems. 

Documented the metadata in an Enterprise Data Catalog and profile the data in their systems to identify data quality issues, suggested remediation strategies for each of those issues, and designed a data quality dashboard. 

Finally, sketched out a proposed MDM implementation architecture, defined a set of matching rules for the creation of customer and item master data, and defined the data governance roles and responsibilities that are necessary to oversee this data governance initiative.

![image](https://user-images.githubusercontent.com/68102477/119439515-db170e80-bd65-11eb-8155-0c451c48f83a.png)

## Project Requirements

## Technical Details

### Some of the systems that SneakerPark relies on for its day-to-day operations are:

**User Service** which allows buyers and sellers to register an account with SneakerPark.com.

**Inventory Management System** which keeps track of the current inventory of sneakers in the warehouse.

**Listing Service** that allows sellers to create listings once their items have been approved.

**Order Processing Service** that processes orders and stores order details.

**Customer Service Application** that records customer support request information from customer service calls and emails.

### These system's uptime (availability) requirements are as follows:

User Service, Order Processing Service, and Customer Service Application are the most critical to SneakerPark's operation and must have an **uptime of 99.999%** (just 26 seconds of downtime per month).

Listing Services can tolerate more downtime at 99.99% (roughly 9 seconds of downtime per day).

Inventory Management Systems is the least critical and can tolerate even more at 99% (around 7 hours of downtime per month).

### Data

You are provided with the extract of the data from these systems in your workplace.

The extract will include **8 tables and 5 schemas** (1 schema per system described above). Feel free to explore the data before getting to the project steps.

You've been told that the data broadly falls into the following Subject Areas: Customers, Inventory, Listings, Orders. (You take note of this because this will help you when you work on the Enterprise Data Model.)

### Governance

Even though there is little in the form of formalized data governance, SneakerPark has shared the following with you:

Customer and Order data is highly confidential and is kept for 7 years unless a customer requests for this data to be deleted.

All the other data is considered internal.

Listing data is deleted after 2 years post expiration with the exception of some aggregated metrics that SneakerPark keeps for analytics purposes.

Inventory data is kept current only with no historical tracking.

**Additional Things to Note:**

Since the data comes from different systems, you should expect the data to have varying levels of data quality, which you will be addressing as part of the project.

The Inventory Management System and Customer Service Application are largely isolated from the other systems and from each other. There are some nightly batch exports that are used to exchange data between these services and the rest of SneakerPark's systems.

The other 3 systems have some integration between them as should become apparent from the data, but the integration is limited and you will still see inconsistencies.

### Template and workspace

Due to rapid growth and the grassroots nature of the organization, SneakerPark has not created any formal documentation for their datasets until now.

The company has set you up with a new Postgres instance/workspace and a SQL client that you will use for this work. You can access the workspace here. A script file that contains the data has been added to the workspace.

To easily share with subject matter experts in the company, they've also provided you with a few templates to document your work. One is the project starter template where you will document your work. Another is the Sheets template for data dictionary and data quality issues.

While this is a high-value project, given the nature of SneakerPark’s business, it is important to note that it should be minimally disruptive to the operation of its critical systems (especially the Order Processing Service).


## Step 1: Metadata Management - Part 1

### Part 1: Enterprise Data Model
Create a conceptual data model that will provide SneakerPark with a holistic view of its data systems and help you grasp the organization's important entities and relationships, which will be instrumental as you move further in the project.

Even though you will not be creating the full logical data model due to time constraints, please do include both cardinality (the type of a relationship such as 1 to many, 1 to 1, or many to many) and optionality (whether the relationship is optional or mandatory, 0 to 1 or 0 to many) in your model.

You can use [Lucidchart](https://www.lucidchart.com/pages/) or any other diagramming tool of your choice, but please use the Crow’s Foot/IE Notation.

Insert your model for Step 1 in the project template.

Tip 1: A simple way to identify entities and relationships is to think in terms of parts of speech. Ask yourself - what are the nouns of the organization? These are your entities. What are the verbs? These are typically the relationships. So in the following sentence - “Professor teaches students”, professor and student would be entities and teaches would be the relationship.

Tip 2: See below for a diagram showing cardinality and optionality.

![image](https://user-images.githubusercontent.com/68102477/119501712-77fc9a80-bdac-11eb-9f11-81009cb825b2.png)

Optionality and cardinality

## Step 2: Metadata Management - Part 2

Part 2: Enterprise Data Catalog
Create the first version of the Metadata Catalog by documenting the metadata from all 5 systems in the "Data Dictionary" and "Business metadata" tabs of the provided Sheets template.

Make sure the precision or length is specified in the data type where appropriate.

Make sure your answer covers all 8 tables when filling the "Enterprise Data Catalog" tab.

Please note that you are required to fill out all fields in both tabs.

Attach the finished document to your final submission.

Tip: The template has notes/comments for most columns to help you with filling out the information (see below for an example).

![image](https://user-images.githubusercontent.com/68102477/119501964-beea9000-bdac-11eb-9154-a10d14df3da3.png)

## Step 3: Data Quality - Part 1

### Part 1: Data Profiling/Cleansing

Profile the data to **identify at least 3 data quality issues** you see in the data. Also provide at least 1 data quality issue that you haven’t yet seen in the data, but can foresee occurring in the future. Based on the issues you’ve identified, come up with the data quality rule for each data quality issue, including for the one that you foresee.

Please put the description of the data quality rules in the column Suggested Data Quality Rule of the "Data Quality Issues" tab in the provided Excel template. Note: Try to use business terms such as “A store must have an address” when you input the suggested data quality rules.

Finally, come up with a metric for each data quality rule that you can use to monitor the data to ensure compliance. You will be using these metrics in the next step. Make sure your metrics are measurable. For example count, average, number (of).

Make sure you fill out all columns in the "Data Quality Issues" tab with your answers in the provided Excel template.

Tip 1: A good starting point for this step is to think about the dimensions of data quality that you've learned about in the course and start checking the data for the types of issues.

Tip 2: Here are some examples of data quality rules to get you started:

Column/Attribute "a" must:
adhere to the [xyz format]
have a [non-zero or non-empty value]
be UNIQUE
be greater/than/equal to [z value]
be one of the [x,y,z values] in a list
Entity/Record “a” must have at least 1 corresponding entity/record “b”
Entity/Record with value “x” for a given attribute/column “a” must always have value “y” for attribute/column “b”
Tip 3: The template has notes for most columns to help you with filling out the information.


## Step 4: Data Quality - Part 2

### Part 2: Monitoring/Dashboads

Using the metrics you've created in the last step, please create a mock-up of a data quality monitoring dashboard that will be used to monitor the data to ensure compliance with your data quality rules.

Please make sure to label your metrics clearly on your mock-up.

Include the dashboard mockup to the Step 4 section of the provided Project template.

## Step 5: Master Data Management - Part 1

### Part 1: MDM Architecture

Based on what you’ve read about SneakerPark’s systems and business model, please choose one of the MDM styles covered in this course (i.e. Registry, Consolidation, Centralized, or Hybrid) and sketch out a proposed MDM implementation architecture. Please include detailed explanation of why you chose this specific approach.

Put your answer in Step 5 in the documentation template.

Tip: Think about how your plan and its implementation might affect existing systems.

## Step 6: Master Data Management - Part 2

### Part 2: Golden Record

In this step, you will define a set of matching rules that will be used by SneakerPark's MDM Hub to match item and customer entities between the company's different systems.

Please come up with 4 rules - 2 for Items and 2 for Customers.

Document your rules in the Step 6 section of the documentation template.

Tips: Remember that a matching rule is used to match master entities (e.g. Item, Customer) across multiple systems using a column or a combination of columns that uniquely identify master records.

Example: Apartment Lease: “Same Address and Social Security” Rule - Match the lease agreement records on the address of the apartment and the Social Security Number of the renter.

## Step 7: Roles & Responsibilities

Write 1-2 paragraphs discussing what data governance roles and responsibilities will be necessary to oversee this new Data Management initiative. Please be sure to discuss the responsibilities in the context of at least 3 different aspects of Data Governance (such as Data Quality Management, Metadata Management, MDM, etc). Based on what you know, do SneakerPark's current employees have the necessary skills for these roles or should the company make new hires?


## Standout Suggestions

Want to make your project stand out? Try the following three challenges.

Standout Suggestion 1:
Create a Business Glossary for SneakerPark and define common terms such as Item, Buyer, etc. Think and discuss how SneakerPark can improve on the consistency of the terms that its systems currently use. (You can use the “Business Glossary” tab of the same Sheets template you’ve been using for the other parts of this project to get you started.)

Standout Suggestion 2:
Document SneakerPark’s current naming conventions. Can you think of any improvements? (You can use the “Standard Naming Conventions” tab of the same Sheets template you’ve been using for the other parts of this project to get you started.) Some examples of Naming Conventions include;

Do not use spaces or special characters.
Use only LOWERCASE.
All identifier fields should end in “_id”.
Avoid acronyms and abbreviations.
Standout Suggestion 3:
Write SQL scripts for the matching rules that you’ve created in Step 6.


Insert your discussion into the Step 7 section in the template.
