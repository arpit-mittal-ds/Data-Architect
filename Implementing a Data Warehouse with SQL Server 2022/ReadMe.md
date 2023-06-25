# Implement a Data Warehouse with SQL Server 2022





### Microsoft SQL Server Sample Databases
https://github.com/microsoft/sql-server-samples

https://github.com/Microsoft/sql-server-samples/releases

### Full sample database for OLAP (OnLine Analytical Processing). For SQL Server 2016 SP1 (or higher), any edition.
https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0
WideWorldImportersDW-Full.bak 

### Save the DB backup files in the device

![1](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/62d43540-a416-4d3a-95ef-85d7b84f0331)

### Restore the 2 databases using SSMS in SQL Server

![2](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/69198d22-b7c2-4722-9466-e0b214eefe5f)

### Set the row and log file sizes 

**Autogrowth setting will automatically size files to fit data**

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/5e3b3916-1b55-408d-9f1a-35bb2688d120)

### Set the TempDB 

TempDB is used as a temporary storage location that SQL Server will use when it needs to move data around, build indexes, and perform joins, when THE DATA DOESN'T FULLY FIT IN THE SYSTEM(PHYSICAL) MEMORY. Becasue of this move the tempdb onto a high performance disc drive, separate from data warehouse and log files.

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/34497ac1-7a9f-4b46-b8e4-2d732228040d)

**Move the following files to a high performing disc drive**
![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/2d3ab45c-5ce8-45ba-b4a0-e60b6b1465e5)

**Change the size from 8 MB default to 100 MB.**
![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/7a0e8caf-52d5-4627-9552-f1aaebc0022f)

**Make sure TempDB is not set to auto shrink**
![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/27254ac4-c15f-41f8-82f9-98283d1bbe3d)

### Use separate Schema for Fact and Dimension Tables

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/80d2b057-b222-440d-ab6b-acdac6dbb031)

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/bbe3ecf9-96d7-4ee4-a4b4-ac8c687d75b0)

### In Dimensions, use dim_key as data warehouse key and dim_id as source system key from transactional source db

**This allows us to go back to the source database and look up information if we need to, and it can help the ETL process know which records have already been written to the data warehouse.**

**Other columns will be descriptive attributes in the dimension and foreign keys to other dimensions (if snowflake design)**

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/a45174df-84a8-4539-a987-fad2514d2b0d)


![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/eeaf94c9-aadb-41a7-9e56-c4fdf8cf8fb6)

![image](https://github.com/arpit-mittal-ds/Data-Architect/assets/68102477/1df909b1-50ec-4610-b1a9-53bae7487575)


