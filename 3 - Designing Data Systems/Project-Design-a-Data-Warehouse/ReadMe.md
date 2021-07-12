# Project - Design a Data Warehouse for Reporting and OLAP

## Problem Satement: Does the WEATHER affect HOW PEOPLE FEEL ABOUT A RESTAURANT? Lets find out!!
![image](https://user-images.githubusercontent.com/68102477/121981677-79304e80-cdd1-11eb-978c-bfe26d124ef7.png)

![image](https://user-images.githubusercontent.com/68102477/121981834-c3193480-cdd1-11eb-90b0-ee3aad3185b1.png)

![image](https://user-images.githubusercontent.com/68102477/119745564-bcce2180-bed1-11eb-8997-9fe7771545e9.png)

![image](https://user-images.githubusercontent.com/68102477/121982124-48044e00-cdd2-11eb-83a8-1516c0659b6c.png)

## Overview
In this project, I used actual YELP and climate datasets in order to analyze the effects the weather has on customer reviews of restaurants. 

The data for temperature and precipitation observations are from the Global Historical Climatology Network-Daily (GHCN-D) database. 

I used a leading industry cloud-native data warehouse system called Snowflake for all aspects of the project and applied the skills that I had acquired in this Designing Data Systems Course to architect and design a Data Warehouse for the purpose of reporting and online analytical processing (OLAP).

## Solution

## Step 1 - Obtain and Ingest the data, used for the project, in Snowflake Staging schema

In this project, I merged two massive, real-world datasets in order to draw conclusions about how weather affects Yelp reviews.

### Quick overview of the datasets:

**Yelp** source carries a list of businesses, restaurants, its reviews and ratings. 

**Climatic data source** keeps track of temperature and precipitation data. 

Both of these websites are independent sources and not related to each other. 

[Yelp Dataset Documentation](https://www.yelp.com/dataset/documentation/main)

[Yelp Dataset Download](https://www.yelp.com/dataset/download)

I downloaded 2 files from - “JSON” and “COVID-19 Data”

![image](https://user-images.githubusercontent.com/68102477/122263537-e6e79200-cf19-11eb-8c1a-d68621913bde.png)


[Climate Dataset](https://crt-climate-explorer.nemac.org/)

I downloaded the Historical Weather data (temperature data and precipitation data) for Las Vegas(Nevada) city (LAS VEGAS MCCARRAN INTL AP Station: USW00023169) since it had a large set of businesses listed in the Yelp dataset. 

![image](https://user-images.githubusercontent.com/68102477/122263481-d7684900-cf19-11eb-849c-70a69e50a325.png)



### Deliverables

Screenshot of 6 tables created in Snowflake Staging Schema, upon upload of YELP data

Screenshot of 2 tables created in Snowflake Staging Schema, upon upload of climate data


## Step 2 - Integrate and move data from Staging to ODS


### Deliverables

SQL queries code that transforms data from staging to ODS. 

SQL queries code that specifically uses JSON functions to transform data from a single JSON structure of staging to multiple columns of ODS. (similar to previous deliverable, but includes JSON functions)


SQL queries code to integrate climate and Yelp data

Screenshot of the table with three columns: raw files, staging, and ODS. (and sizes)


## Step 3 - Data Warehouse 

### Deliverables

SQL queries code necessary to move the data from ODS to DWH.

## Step 4 - Reporting

The final **objective** of this project was to write appropriate SQL to **find the impact of weather on restaurant ratings.**

### Deliverables

Data Architecture Diagram

SQL queries code that reports the business name, temperature, precipitation, and ratings.



## Summary

In this project, I created end to end data architecture, 

built ingestion pipeline of data from Yelp and Climatic source systems, 

designed Operational Data Store and Data warehouse systems, 

and transformed data from staging to ODS,

and then from ODS to data warehouse system. 

Finally I ran queries to establish the relation between climate and user sratings.

