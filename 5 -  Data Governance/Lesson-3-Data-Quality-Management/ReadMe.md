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



