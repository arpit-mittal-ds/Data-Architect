# Project: Design and Implement an HR Database

**Architect a database based on the business requirements for a Human Resources Department.**

**Create the physical Database and populate it with data.**

## Project Overview

In this project, I designed, built, and populated a database for the Human Resources (HR) Department at the imaginary Tech ABC Corp, a video game company. 

This project started with a request from the HR Manager. From there, I designed a database using the foundational principals of data architecture that is best suited to the department's needs. I followed steps of database architecture, creating database proposals, database entity relationship diagrams (ERD), and finally creating the database itself. This project is important, as **it is a scaled-down simulation of the kind of real-world assignments data architects work on every day.**

## Overview

Tech ABC Corp saw explosive growth with a sudden appearance onto the gaming scene with its new AI-powered video game console. As a result, they have gone from a small 10-person operation to 200 employees and 5 locations in under a year. HR is having trouble keeping up with the growth since they are still maintaining employee information in a spreadsheet. While that worked for ten employees, it has become increasingly cumbersome to manage as the company expands.
As such, the HR department has tasked me, as the new data architect, to design and build a database capable of managing their employee information.


### Problem Statement

Hi,

Welcome to Tech ABC Corp. We are excited to have some new talent onboard. As you may already know, Tech ABC Corp has recently experienced a lot of growth. Our AI powered video game console WOPR has been hugely successful and as a result, our **company has grown from 10 employees to 200 in only 6 months (and we are projecting a 20% growth a year for the next 5 years)**. We have also grown from our Dallas, Texas office, to 4 other locations nationwide: New York City, NY, San Francisco, CA, Minneapolis, MN, and Nashville, TN.

While this growth is great, it is really **starting to put a strain on our record keeping in HR**. We currently **maintain all employee information on a shared spreadsheet.**** When HR consisted of only myself, managing everyone on an Excel spreadsheet was simple, but now that it is a shared document I am having serious **reservations about data integrity and data security**. If the wrong person got their hands on the HR file, they would see the salaries of every employee in the company, all the way up to the president.

After speaking with Jacob Lauber, the manager of IT, he suggested I put in a request to have my HR Excel file converted into a database. He suggested I reach out to you as I am told you have experience in designing and building databases. When you are building this, please keep in mind that I want **any employee with a domain login to be have read only access the database. I just don't want them having access to salary information. That needs to be restricted to HR and management level employees only. Management and HR employees should also be the only ones with write access. By our current estimates, 90% of users will be read only.**

I also want to make sure you know that am looking to **turn my spreadsheet into a live database**, one I can input and edit information into. I am **not really concerned with reporting capabilities at the moment**. Since we are working with employee data we are required by federal regulations to **maintain this data for at least 7 years**; additionally, since this is considered **business critical data, we need to make sure it gets backed up properly.**

As a final consideration. We would like to be able to **connect with the payroll department's system in the future.** They maintain employee attendance and paid time off information. It would be nice if the two systems could interface in the future.

I am looking forward to working with you and seeing what kind of database you design for us.

Thanks,

Sarah Collins

Head of HR

### Dataset
The HR dataset I worked with is an **Excel workbook consisting of 206 records, with eleven columns.** The data is in human-readable format and has not been normalized at all. The data lists the names of employees at Tech ABC Corp, as well as information such as job title, department, manager's name, hire date, start date, end date, work location, and salary.

### IT Department Best Practices
The IT Department has certain Best Practices policies for databases that I had followed, are detailed in the Best Practices document.


## PROJECT SPECIFICATION - Designing an HR database

### Gather business requirements  (Data Architect Business Requirement) for a new database request and create a non-technical proposal document

Identify the business purpose for creating the database

Outline data to be stored

List estimate size of the database and growth rate

Identify who will own/manage data

Identify who will be able to access the data

Identify sensitive/restricted data

Outline data retention and backup requirements

Translate a non-technical proposal into a technical proposal document.

Complete “Data Architect Technical Requirement ” section in step 1 in the starter template

Provide at least 2 justifications for creating a database

Define data elements to be stored

List database objects to be created (Students may wish to return to database objects section after completion of logical ERD)

Define proposed data ingestion method

Define who has data ownership

Define user access recommendations

List at least 2 examples of considerations taken to ensure data scalability and flexibility and provide an explanation

Defined proposed storage method and provided an explanation

Identify data retention requirements

Propose a backup schedule and provide an explanation

Relational Database Design

### Develop a conceptual ERD using Lucidchart.

Complete the “ERD conceptual” section in step 2 in the starter template

Create at least 3 objects and show their relationships through connection lines

This should be a first step towards 3NF, so chose attributes that will likely become future tables

Follow the visual requirements listed in the instructions

Use Lucidchart's built-in template for DBMS ED Diagram UML

No attributes should be named and Crows foot notation is not required

Consider an entity for any secure / restricted data

### Develop a logical ERD using Lucidchart.

Complete the “ERD logical” section in step 2 in the starter template

Normalize the data to the 3NF

Create an entity for each table

List Attributes

Add relationship lines connecting entities

Follow the visual requirements listed in the instructions

Use Lucidchart's built-in template for DBMS ED Diagram UML

Entity and attribute names can still be plain English

### Develop a physical ERD using Lucidchart

Complete the “ERD physical” section in step 2 in the starter template

Tables and attributes should be given database friendly names now (think underscore or camel case)

Attribute data types need to be defined

Primary keys should be bold

Relationship lines need to line up with PK / FK pairings

Cardinality is required on this ERD

Follow the visual requirements listed in the instructions

### Create A Physical Database

Develop DDL code to create a database in a SQL environment.

Complete the “DDL” section in step 3 in the starter template

Create scripts (.sql file) to build tables with attributes as defined in the physical ERD

Primary and foreign keys must be included in the code

Populate the database and demonstrate a working database by completing CRUD commands.

### Complete the “CRUD” section 

Screen shots should be taken of all SQL commands showing code and results

Following commands like update/delete/insert, run a select * on the table affected to show results

Suggestions to Make Your Project Stand Out!

Create a view that returns all employee attributes; results should resemble the initial Excel file.

Create a stored procedure with parameters that return current and past jobs (include employee name, job title, department, manager name, start and end date for the position) when given an employee name.

Implement user security on the restricted salary attribute.
