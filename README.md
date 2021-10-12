# Data-Architect
Planned, designed and implemented enterprise data infrastructure solutions and created the blueprints for an organization’s data management system. 

Created a relational database with PostGreSQL, designed an Online Analytical Processing (OLAP) data model to build a cloud based data warehouse.

Designed scalable data lake architecture that meets the needs of Big Data. 

Finally, applied the principles of data governance to an organization’s data management system.


## Notes

### [Inmon vs Kimball](https://tdan.com/data-warehouse-design-inmon-versus-kimball/20300)

![image](https://user-images.githubusercontent.com/68102477/136888956-9d609d36-7278-47f6-bd3b-f74b9b54e21a.png)

* Data Warehouse is normalized
* 
The Inmon approach to building a data warehouse begins with the corporate data model. This model identifies the key subject areas, and most importantly, the key entities the business operates with and cares about, like customer, product, vendor, etc. From this model, a detailed logical model is created for each major entity. For example, a logical model will be built for Customer with all the details related to that entity. There could be ten different entities under Customer. All the details including business keys, attributes, dependencies, participation, and relationships will be captured in the detailed logical model. **The key point here is that the entity structure is built in normalized form.**  Data redundancy is avoided as much as possible. This leads to clear identification of business concepts and avoids data update anomalies. The next step is building the physical model. **The physical implementation of the data warehouse is also normalized.**

**This is what Inmon calls as a ‘data warehouse,’ and here is where the single version of truth for the enterprise is managed. This normalized model makes loading the data less complex, but using this structure for querying is hard as it involves many tables and joins. So, Inmon suggests building data marts specific for departments.**














