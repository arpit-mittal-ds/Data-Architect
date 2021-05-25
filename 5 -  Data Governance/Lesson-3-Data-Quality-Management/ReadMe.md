# Notes - Data Quality Management

Data profiling
Data Quality Dimensions
Data Quality Remediation
Data Quality Measurement and Monitoring


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
What data is missing ? We review how much of the expected dataset is complete and what data is missing. For example, if among all the customers sign up for an account, only 20% filled in their phone number, we would say the dataset is 20% complete.

![image](https://user-images.githubusercontent.com/68102477/119479864-6c04de80-bd94-11eb-8df0-b2c13304635f.png)

**Validity**
Does data follow expected format and business rules? We review the data to determine if it conforms to the specified format and business rules. For example, if a text value is stored in a phone number field, it is not valid.

![image](https://user-images.githubusercontent.com/68102477/119480732-4e844480-bd95-11eb-813b-6978988c09d4.png)

![image](https://user-images.githubusercontent.com/68102477/119480942-81c6d380-bd95-11eb-82eb-dbcb8795b871.png)

**Consistency**
We review to check if the data in multiple places or systems are consistent. For example, if the order status is ‘Canceled’ but the Cancellation date is blank, it is not consistent.

![image](https://user-images.githubusercontent.com/68102477/119481038-9c00b180-bd95-11eb-985a-480b60f2ca76.png)

![image](https://user-images.githubusercontent.com/68102477/119481279-dc602f80-bd95-11eb-85f2-f65975c49796.png)

**Accuracy**
We review to determine if the data accurately reflects the event or object. For example, a customer asks for a return stating the product is defective, and in the return system, the return reason is blank for that order. In this case, this data is not accurate.

![image](https://user-images.githubusercontent.com/68102477/119481392-fc8fee80-bd95-11eb-9ee6-3ca33b48da3b.png)

**Uniqueness**
What data is duplicated or repeated ? We review whether data is duplicated in a given system or multiple systems. If data is duplicated, then the duplicates need to be eliminated.

![image](https://user-images.githubusercontent.com/68102477/119481917-9a83b900-bd96-11eb-945c-e1406a25c28b.png)

**Timeliness**
How recent is our data ? We review to check if the data represent reality at a given time. For example, if the customer provided a change of address, which is not applied to the next customer bill, then the data is not timely. Also if detials of a customer are not updated timely then he could be wrongly segemented. 

![image](https://user-images.githubusercontent.com/68102477/119482039-c010c280-bd96-11eb-995b-efec68808186.png)


### New terms
Data Quality Dimensions: Characteristics used to specify data quality expectations and requirements

### Further reading
[additional examples of data quality dimensions](https://www.cdc.gov/ncbddd/hearingloss/documents/dataqualityworksheet.pdf)


## Data Quality Remediation

### There are several approaches to remediate data quality issues. The key ones are:

![image](https://user-images.githubusercontent.com/68102477/119483441-509bd280-bd98-11eb-9493-85d989429199.png)

### Implement application controls to prevent bad data from being entered. 

This ensures that high-quality data flows into all the downstream systems that use this data.

![image](https://user-images.githubusercontent.com/68102477/119483771-a83a3e00-bd98-11eb-84e4-1769ca5a535c.png)

People make fewer mistakes if they have to select a value rather than enter data in a free form field. **Provide drop-down and selection lists** to guide the user to enter better quality data.

When a user does not want to provide information, they enter some random data. So have a **data validation check to ensure the data entered is valid.**

Users can inadvertently create some duplicate information. **Systematic checks** can prevent this issue.

Implementing these changes in different systems across the enterprise that involves multiple project teams is not easy. **Governance policies and a governance team are needed to make this happen!!!**

**The root cause of some data quality issues can be inefficient business processes. You would need to refine business processes to remediate these issues.**
### Some examples of inefficient business processes and remediation approaches:

People in different teams and departments can handle the same data differently, resulting in inconsistencies. 
For example, some people can fill in the vendor name as ‘Staples,’ and others can fill in the vendor name as ‘Staples Inc.’ 
To prevent this from happening, **a process must be implemented** to pick the vendor name from a reference list.

People can misunderstand what the data means and enter the wrong value. For example, some people think the price is the selling price, and others think the price is the purchase price and enter data incorrectly. To prevent this issue, what data to be captured in a field needs to be clearly communicated and documented.

People input a random or placeholder value when they don’t know the details of some information. For example, EIN is short for Employer Identification Number, something you need to input when filing for tax return. Someone who doesn’t know what EIN is may input some random value. To prevent this issue, it’s necessary to provide a reference list of businesses and their Employer Identification Number.

**Refining business processes in multiple departments requires an enterprise-wide effort. Once again, a governance team needs to be in place, and governance policies need to be implemented to make these changes happen !!!**


### Another approach is to perform data cleansing for fixing data quality issues. 

This ensures that high-quality data is available for business processes and analytics. 

**Several data cleansing techniques can be used to remediate data quality issues:**

**Enrichment** is a process where the **data is augmented with data** from other systems, internal reference data, or external third-party vendors.

Different variations like formats, spellings of the same data can exist in multiple places. **Standardization** is a process where this data is converted to a single form.

**Deduplication** is a process that consolidates multiple instances of the same data into a single instance.

Same data can exist in multiple systems and need to be synchronized to have the same values. Data quality checks are applied to compare data between the different systems to identify potential inconsistencies. If these checks identify discrepancies, data will be synchronized.

### New terms
**Data Cleansing:** Process used to fix data quality issues



## Data Quality Measurement and Monitoring

Data quality can degrade over time as bad data is constantly being introduced due to business operations and system issues. We use data quality metrics to understand the data quality at a given point in time and identify areas of improvement. Data quality metrics contains two components:

Data Quality Score is assigned to a data attribute/entity based on the data quality dimensions - completeness, validity, consistency, accuracy, uniqueness, and timeliness. The score is a number say on a scale of 1 to 100 that quantitatively measures the data quality. For example, if 1200 out of 5000 records miss a value in the phone number column, then the data quality score is (1- 1200/1500)*100 = 76.

Data Quality Thresholds categorizes data into different quality levels and are set by the business based on the need and criticality of data. For example, thresholds can be set to less than 70, 70-80, and higher than 80, representing poor, medium, and high data quality. Data quality score above 80 is an acceptable range or green, data quality score between 70-80 is an alert to watch out or yellow. If the data quality score falls below 70, it is a red light indicating that you will start investigating significant issues.

Data quality monitoring is performed using several techniques:

Data quality dashboards that display data quality metrics across several data dimensions and data entities.

Email notifications and alerts are set up to notify data stewards of data abnormalities and issues. They can also be created to notify users that the data quality process execution is completed and the dashboards and reports are ready for review.

Exception reports display the list of data issues and exceptions identified based on a set of predefined business rules.

Trend reports are used to review how the data quality is trending over time, for example, month over month, quarter over quarter, etc.

Data Quality Measurement - part 1
Play Video
Data Quality Measurement - part 2
Play Video
Summary
Here we looked at the data quality of the phone number column along the 6 data quality dimensions: completeness, validity, consistency, accuracy, uniqueness, and timeliness.

For each data column, you calculate a separate data quality score for each dimension. Finally, you aggregate all these individual data quality scores to compute the overall data quality score for that column. Note that the overall data quality is not calculated as the simple average but by using the total records with one or more issues.

New terms
Data Quality Score: Quantitatively measures of data quality for a given data entity or attribute
Data Quality Threshold: Categorizes data into different quality levels
Further reading
You can read more about data quality monitoring in this article
