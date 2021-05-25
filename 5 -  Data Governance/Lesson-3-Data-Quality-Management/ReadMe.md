# Notes - Data Quality Management

## What is Data profiling ?

Data profiling is a process where we analyze the data from different sources and **summarize information about data**. 

Data profiling should be one of the first steps in a data project. 

Data profiling is used to understand the data, discover business rules, and identify data quality issues. Some of the most commonly used data profiling techniques:

First, some **basic profiling** is performed to analyze the data in a table and each of the columns using different techniques:

![image](https://user-images.githubusercontent.com/68102477/119443925-bd4da780-bd6d-11eb-9ae9-2673387e6f65.png)

### Table Profiling 
is a process where we perform some high-level profiling of the data in a table. 

More specifically:

Reviewing the number of records in a table gives you an idea of how big the dataset is.

Reviewing some sample records, say 10-20 rows helps you understand the data

### Column Profiling
is a process where you analyze data in each column of a table. 

More specifically:

**Number of unique values** helps us identify the columns that should have a finite set of values, for example, product category, sales district, gender. This helps with query optimization.

**Number of null and blank values** can help determine data quality issues like incomplete data from a source.

**Maximum and minimum values**  help determine the range of the dataset and identify any potential outliers.

**Data type and length inference** help during the creation of the data model. It also helps to identify issues like the revenue column having a text value.

![image](https://user-images.githubusercontent.com/68102477/119443974-d5252b80-bd6d-11eb-8a44-aca6ad6a6996.png)

![image](https://user-images.githubusercontent.com/68102477/119444035-f128cd00-bd6d-11eb-85a0-0be307f2dd54.png)

![image](https://user-images.githubusercontent.com/68102477/119444120-17e70380-bd6e-11eb-83fb-de4f2af835d8.png)

![image](https://user-images.githubusercontent.com/68102477/119444302-55e42780-bd6e-11eb-8587-082259f1ecd3.png)


## Data Value Profiling

After we complete basic profiling on data, we perform an in-depth analysis of data values. 
As a result of this analysis, we **identify data outliers** which are data points that fall outside of the expected list of values. 

![image](https://user-images.githubusercontent.com/68102477/119444483-a9ef0c00-bd6e-11eb-8fee-f2b89f6ded73.png)

### There are different types of outliers:

You examine the data values in a column to identify outliers. For example, some of the records are assigned to the ‘Unknown’ sales region.

You look into patterns in the data to identify outliers. For example, some phone numbers in a column do not have an area code.

You look into the distribution of data in a column to identify abnormal and potentially erroneous values. For example, some order records have a negative unit price.

You also analyze the data to identify the data domain which is the subject area of the data. For example, Product Code, Email Address, Social Security Number

![image](https://user-images.githubusercontent.com/68102477/119444599-d9057d80-bd6e-11eb-9b21-061a338d97bc.png)

![image](https://user-images.githubusercontent.com/68102477/119444729-0e11d000-bd6f-11eb-8cfd-3fedc5652d31.png)

![image](https://user-images.githubusercontent.com/68102477/119444963-66e16880-bd6f-11eb-970c-86e7fac7805a.png)

![image](https://user-images.githubusercontent.com/68102477/119445100-a3ad5f80-bd6f-11eb-957e-5343c392a0cf.png)


**Personal Experience - Having "Test" records in Production from source systems: A Data Quality Issue**

### New terms

Table Profiling: Process where you perform some high-level profiling of the data in a table.

Column Profiling: Process where you analyze data in each column of a table.

Data Outliers: Data points that fall outside of the expected list of values.

Data Domain: is the subject area of the data.

### Further reading
[the vendor tools available in the market for data profiling](https://analyticsindiamag.com/10-data-profiling-tools-every-developer-must-know/)

## Data Quality Dimensions

![image](https://user-images.githubusercontent.com/68102477/119469907-242d8980-bd8b-11eb-9d0f-1bdf74fb116b.png)

Additional data profiling can be performed by further analyzing data based on several data quality dimensions - completeness, conformity, consistency, accuracy, uniqueness, and validity. This aids in identifying data quality issues like missing data, data inconsistencies, inaccuracies, and duplicates. Details of the six data quality dimensions:

**Completeness**
We review how much of the expected dataset is complete and what data is missing. For example, if among all the customers sign up for an account, only 20% filled in their phone number, we would say the dataset is 20% complete.

**Validity**
We review the data to determine if it conforms to the specified format and business rules. For example, if a text value is stored in a phone number field, it is not valid.

**Consistency**
We review to check if the data in multiple places or systems are consistent. For example, if the order status is ‘Canceled’ but the Cancellation date is blank, it is not consistent.

**Accuracy**
We review to determine if the data accurately reflects the event or object. For example, a customer asks for a return stating the product is defective, and in the return system, the return reason is blank for that order. In this case, this data is not accurate.

**Uniqueness**
We review whether data is duplicated in a given system or multiple systems. If data is duplicated, then the duplicates need to be eliminated.

**Timeliness**
We review to check if the data represent reality at a given time. For example, if the customer provided a change of address, which is not applied to the next customer bill, then the data is not timely.

### New terms
Data Quality Dimensions: Characteristics used to specify data quality expectations and requirements

### Further reading
[additional examples of data quality dimensions](https://www.cdc.gov/ncbddd/hearingloss/documents/dataqualityworksheet.pdf)

## 

