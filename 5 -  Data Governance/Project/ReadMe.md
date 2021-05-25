

![image](https://user-images.githubusercontent.com/68102477/119439498-d2263d00-bd65-11eb-807d-af79e6ece154.png)

# Data Governance at SneakerPark

Implemented Data Governance solutions for an online shoe reseller SneakerPark to better manage their data now and in the future. 

Created an Enterprise Data Model that provides a holistic view of all the data in their systems. 

Documented the metadata in an Enterprise Data Catalog and profile the data in their systems to identify data quality issues, suggested remediation strategies for each of those issues, and designed a data quality dashboard. 

Finally, sketched out a proposed MDM implementation architecture, defined a set of matching rules for the creation of customer and item master data, and defined the data governance roles and responsibilities that are necessary to oversee this data governance initiative.

![image](https://user-images.githubusercontent.com/68102477/119439515-db170e80-bd65-11eb-8155-0c451c48f83a.png)


## Technical Details
Some of the systems that SneakerPark relies on for its day-to-day operations are:

User Service which allows buyers and sellers to register an account with SneakerPark.com.

Inventory Management System which keeps track of the current inventory of sneakers in the warehouse.

Listing Service that allows sellers to create listings once their items have been approved.

Order Processing Service that processes orders and stores order details.

Customer Service Application that records customer support request information from customer service calls and emails.

These system's uptime (availability) requirements are as follows:

User Service, Order Processing Service, and Customer Service Application are the most critical to SneakerPark's operation and must have an uptime of 99.999% (just 26 seconds of downtime per month).
Listing Services can tolerate more downtime at 99.99% (roughly 9 seconds of downtime per day).
Inventory Management Systems is the least critical and can tolerate even more at 99% (around 7 hours of downtime per month).
Data
You are provided with the extract of the data from these systems in your workplace.

The extract will include 8 tables and 5 schemas (1 schema per system described above). Feel free to explore the data before getting to the project steps.

You've been told that the data broadly falls into the following Subject Areas: Customers, Inventory, Listings, Orders. (You take note of this because this will help you when you work on the Enterprise Data Model.)

Governance
Even though there is little in the form of formalized data governance, SneakerPark has shared the following with you:

Customer and Order data is highly confidential and is kept for 7 years unless a customer requests for this data to be deleted.
All the other data is considered internal.
Listing data is deleted after 2 years post expiration with the exception of some aggregated metrics that SneakerPark keeps for analytics purposes.
Inventory data is kept current only with no historical tracking.
Additional Things to Note:
Since the data comes from different systems, you should expect the data to have varying levels of data quality, which you will be addressing as part of the project.

The Inventory Management System and Customer Service Application are largely isolated from the other systems and from each other. There are some nightly batch exports that are used to exchange data between these services and the rest of SneakerPark's systems.

The other 3 systems have some integration between them as should become apparent from the data, but the integration is limited and you will still see inconsistencies.

Template and workspace
Due to rapid growth and the grassroots nature of the organization, SneakerPark has not created any formal documentation for their datasets until now.

The company has set you up with a new Postgres instance/workspace and a SQL client that you will use for this work. You can access the workspace here. A script file that contains the data has been added to the workspace.

To easily share with subject matter experts in the company, they've also provided you with a few templates to document your work. One is the project starter template where you will document your work. Another is the Sheets template for data dictionary and data quality issues.

While this is a high-value project, given the nature of SneakerPark’s business, it is important to note that it should be minimally disruptive to the operation of its critical systems (especially the Order Processing Service).
