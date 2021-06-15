# Data Warehouse

## Lesson Overview

In previous lessons we learnt how to extract data from source systems into staging and then from staging to ODS.

**1. Data Warehouse**

**2. Dimensional Modelling - Facts and Dimensions**

**3. ETL process from ODS to the data warehouse**

**4. Star and Snowflake Schema**

**5. Reporting** 
Once the data warehouse is up and running, then most importantly, we will write SQL queries for the purpose of reporting. This reporting is vital for decision-makers and leaders to see patterns and intelligent insights.


## 1. Data Warehouse

The complexity and range of information required to support business decisions has increased, and operational database structures were unable to support all of these requirements. Therefore, a new data storage facility, called a data warehouse, developed. The data warehouse extracts its data from operational databases as
well as from external sources, providing a more comprehensive data pool.

All the data that is collected and managed by an organization can be stored in this centrally accessed system. This system ensures a Single Version of Truth for your data and provides all users access to the same data. This system can be used to identify trends, patterns, and outliers in the data. Both standard queries and custom queries can be accessed.

While a data warehouse offers many benefits, one of the key benefits is having a consistent, reliable, dependable central point of access for all the data in an organization


### The Need for Data Analysis

Analyzing the company data can provide insightful information about short-term tactical evaluations and strategic questions, such as: 

**Are our sales promotions working? 

**What market percentage are we controlling?

**Are we attracting new customers?**

Note that to answer such question historial data needs to be analysed. Also data from different divisions (such as Marketing, Sales, Billing etc.) and their operational databses needs to be integrated.

Decision makers can no longer wait a couple of days for a report to be generated; they are compelled to make **quick decisions** if they want to **remain competitive**. Every day, TV ads offer low-price warranties, instant price matching, and so on. 
How can companies survive on lower margins and still make a profit? The key is in **having the right data at the right time to support the decision-making process.**

Companies and software vendors first addressed these multilevel decision support needs by creating autonomous applications for particular groups of users, such as those in finance, customer management, human resources, and product support. Applications were also tailored to different industries such as education, retail, health care, and finance. **This approach worked well for some time, but changes in the business world, such as globalization, expanding markets, mergers and acquisitions, increased regulation, and new technologies, called for new ways of integrating and managing decision support across levels, sectors, and geographic locations.** This more comprehensive and integrated decision support framework within organizations became known as **Business Intelligence**, with DW at it's core.

BI is not a product by itself, but a **framework of concepts, practices, tools, and technologies** that help a business better understand its core capabilities, provide snapshots of the company situation, and identify key opportunities to create competitive advantage. In general, BI provides a framework for:

• **Collecting and storing** operational data (ODS)
• **Aggregating the operational data** into decision support data (Data Warehouse)
• **Analyzing** decision support data to generate information
• **Presenting** such information to the end user to support business decisions Making business decisions, which in turn generate more data that is collected, stored,
and so on (restarting the process)
• **Monitoring** results to evaluate outcomes of the business decisions, which again provides more data to be collected, stored, and so on
• **Predicting** future behaviors and outcomes with a high degree of accuracy (ML)


### Characterstics of a Data Warehouse

**Subject Oriented**

Data warehouse data is organized and summarized by topic, such as sales, marketing, finance, distribution, and transportation. For each topic, the data warehouse contains specific subjects of interest—products, customers, departments, regions, promotions, and so on. This form of data organization is quite different from the more functional or process-oriented organization of typical transaction systems. 

For example, an invoicing system designer concentrates on designing normalized data structures to support the business process by storing invoice components in two tables: INVOICE and INVLINE. In contrast, the data warehouse has a subject orientation. Data warehouse designers focus specifically on the data rather than on the processes that modify the data. (After all, data warehouse data is not subject to numerous real-time data updates!) Therefore, instead of storing an invoice, the data warehouse stores its “sales by product” and “sales by customer” components because decision support activities require the retrieval of sales summaries by product or customer.

**Time Variant**

**Non-Volatile**

**Integrated**
The data warehouse is a centralized, consolidated database that integrates data derived from the entire organization and from multiple sources with diverse formats.


**Primary difference b/w a Data Warehouse and a Data Lake:**

Data Lake can have structured, semi-structured and unstructured data also. In other words, s data lake is a modern data warehouse with unstructured data also.

### Benefits of a DWH:

The data warehouse is used by everyone to find information, so it is **optimized for reads.**

**Historical data** can be used to find clues about customer behavior. For example: Why customers are withdrawing their subscriptions.

Power users can write **ad-hoc custom queries**

Users trust data warehouse reports, which is cleansed and valued as a **Single Version of Truth**

![image](https://user-images.githubusercontent.com/68102477/121469810-8085df80-ca00-11eb-9c97-7d03fa9757e5.png)


The End is in Sight
You have seen the diagram above in earlier lessons, but it makes sense to revisit it now. The data warehouse supports the reporting that is the ultimate goal of the Data Architect. We have said many times throughout the course, it is the pot at the end of the rainbow. Decision-makers can now dive deep into the data to find hidden trends and other valuable information.


### Why Data Warehousing Matters


The Value of Data
Especially in unpredictable times, business leaders need access to their data to provide up to date, easy to access, and well-organized data to help provide insights to help navigate based on factual data, and not emotion.

Insightful reporting data
A data warehouse can provide insightful reporting data from across the entire organization.

Important decisions can be made such as
Selling or closing certain business units
Merging some departments to minimize the costs
Acquiring an external company to fill an unseen need
Opening branches to enter into new markets
Productivity can be increased
by understanding the perspective from multiple departmental perspectives. Inefficiencies can be identified and addressed.
What-if scenarios using clean enterprise data sets can be run to innovate possibilities
Up to date and factual data related to revenue and expenses can be used to manage profits
Case Study: The impact of COVID
A data warehouse is even more important in these unprecedented situations:

Several big tech companies crossed the $1 trillion market capitalization recently.
During the period of COVID, a top tech company doubled its market cap to $2 trillion. when many companies are struggling to survive.
Yet, some companies lost revenue. How is that possible?

One of the reasons some companies were able to thrive during COVID time was that their Data Architecture was in place and decision-makers had access to up-to-date data from all aspects of the organization. The Source of Truth data provided reports that allowed them to understand their exact situation, and could plan accordingly.


## Dimensional Modelling

### [Fact table](https://en.wikipedia.org/wiki/Fact_table)

A fact table consists of the measurements, metrics or facts of a business process. It is located at the center of a star schema or a snowflake schema surrounded by dimension tables. Where multiple fact tables are used, these are arranged as a fact constellation schema. A fact table typically has two types of columns: those that contain facts and those that are a foreign key to dimension tables. The primary key of a fact table is usually a composite key that is made up of all of its foreign keys. 

**Grain** - Fact tables are often defined by their grain. The grain of a fact table represents the most atomic level by which the facts may be defined. The grain of a sales fact table might be stated as "sales volume by day by product by store". Each record in this fact table is therefore uniquely defined by a day, product and store. Other dimensions might be members of this fact table (such as location/region) but these add nothing to the uniqueness of the fact records. 

Measure types
Additive - measures that can be added across any dimension.
Non-additive - measures that cannot be added across any dimension.
Semi-additive - measures that can be added across some dimensions.

A fact table might contain either detail level facts or facts that have been aggregated (fact tables that contain aggregated facts are often instead called summary tables).

Special care must be taken when handling ratios and percentage. One good design rule[1] is to never store percentages or ratios in fact tables but only calculate these in the data access tool. Thus only store the numerator and denominator in the fact table, which then can be aggregated and the aggregated stored values can then be used for calculating the ratio or percentage in the data access tool.

In the real world, it is possible to have a fact table that contains no measures or facts. These tables are called "factless fact tables", or "junction tables".

The factless fact tables may be used for modeling many-to-many relationships or for capturing timestamps of events.[1]

### Dimensions

A dimension is a structure that categorizes facts and measures in order to enable users to answer business questions. Commonly used dimensions are people, products, place and time.

The primary functions of dimensions are threefold: to provide filtering, grouping and labelling.

These functions are often described as "slice and dice". A common data warehouse example involves sales as the measure, with customer and product as dimensions. In each sale a customer buys a product. The data can be sliced by removing all customers except for a group under study, and then diced by grouping by product.


### Slowly changing dimensions

Dimensions in data management and data warehousing contain relatively static data about such entities as geographical locations, customers, or products. 

Data captured by Slowly Changing Dimensions (SCDs) change slowly but unpredictably, rather than according to a regular schedule.




## ETL Data from ODS to DWH




