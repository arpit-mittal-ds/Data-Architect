# Notes

## Learning Objectives for this lesson are:

Understand master data and golden record.

Understand the different Master Data Management architectures.

Identify the right Master Data Management architecture that is best suited for the company's needs.

Create the golden record for a master data entity.

Setup Master Data Governance processes.

Understand the role of data stewards in Master Data Management.

## What Is Master Data Management

**A common data problem is that the same data exists in more than one application in a company and is inconsistent. This creates a serious challenge for the business operations of the company. Master data and Master Data Management help solve this problem.**

**Some critical data, such as customer, product, and vendor, are shared across the enterprise for any business. We call this business-essential data master data. Key characteristics of master data:**

Master data entities are descriptive in nature—for example, customer master, product master, employee master, etc.

Once master data is created, it can be shared and consistently used across multiple business processes, departments, and applications.

Master data is critical to the business operations of the company. Imagine what happens if your company loses some of its customer data!!!

Master data is not transactional in nature. For example, sales transactions, orders, invoices are not master data.

Master data usually has many versions in different systems. Golden Record is the best possible record in an Enterprise and is created by consolidating and correcting inaccurate and duplicated data in different systems. Golden Record is a single, unified version of the data. It is a trusted and accurate version of data and is also called the “Single Version of the truth”.

**Master Data Management (also called MDM) system is a technology solution that gathers data from multiple systems, then consolidates the data using different algorithms to create the golden record.**
The golden records for different master data entities are stored in a central database called Master Data Hub or Master Data Repository. MDM system also enables governance of master data by providing a mechanism for reviewal, approval, and rejection of the master data. Master data is distributed to all the different systems, and all the changes in different systems are synced back to the master data.

### New terms
**Master Data:** Business-critical data that is shared across the enterprise.

**Golden Record:** Single unified version of the data.

**MDM System:** Stands for Master Data Management system. A technology solution used to create and maintain a golden record.

**Master Data Hub:** Also called Master Data Repository. A central database that stores golden records for different master data entities.

### Further reading
You can find some examples of master data and MDM systems in this article:
[examples-of-master-data-in-retail-and-e-commerce](https://www.ecommercenext.org/examples-of-master-data-in-retail-and-e-commerce/)

## Master Data Management Is Important
Implementing a Master Data Management System requires a HUGE investment of money and resources. There has to be a strong business justification for companies to undertake this effort.
Some of the common drivers for building a Master Data Management System:

1. Companies want to establish a **360° view of customers**, a comprehensive end-to-end picture of all the customer interactions with the company. This enables a customer-centric approach to business that allows companies to better target products and offerings and improve customer experience.

2. Companies want to build a new **Enterprise Data Warehouse** or remediate an existing Enterprise Data Warehouse with some major data inconsistency issues. Master data management system serves as a foundation and greatly improves the data quality of the Enterprise Data Warehouse, enabling accurate reporting and analytics.

3. **Mergers and acquisitions** bring many variations of the same business data into the company. Master Data Management helps consolidate the data from different companies into a single view.

Building a Master Data Management System requires **executive-level sponsorship** and is an enterprise-wide effort that requires collaboration across multiple business domains and IT systems.

Many people who work in business departments take responsibility for data ownership. Developers and architects in the IT department own the implementation and maintenance of MDM.

MDM is cross-functional in nature and requires alignment among multiple departments on business rules and governance policies.

Existing business processes will need to be refined to enable the adoption of MDM.

Different project teams and personnel supporting multiple IT systems are involved in MDM implementation and maintenance.

### New terms
***360° view of customers:*** Comprehensive end to end picture of all the customer interactions with the company.

***Enterprise Data Warehouse:*** Centralizes business information across the company for analytics and decision making.

***Acquisition:*** A company purchases another company.

***Merger:*** A company joins with another company to form a larger company.

### Further reading
[Benefits of Master Data Management](https://www.to-increase.com/business-integration/blog/master-data-management-benefits)

## Master Data Management Architecture

![image](https://user-images.githubusercontent.com/68102477/119346275-597b9e00-bcdd-11eb-8683-57ead995d553.png)

**There are four main types of MDM architecture styles - Registry MDM, Consolidated MDM, Centralized MDM, Coexistence MDM.**

### Registry MDM 
has a central database that contains a list of primary keys for the master records along with a list of the available attributes and the source systems where these records can be found. This central database essentially serves as the “registry” for all the master records and their locations, hence the name, Registry MDM. The master data remains in the source systems and the user has to query and join this data manually using the keys provided. This architecture is simple to implement, has low cost, and causes minimal intrusion to existing systems. A more advanced version of this style uses some form of an automated mechanism to both retrieve and join data at runtime.

![image](https://user-images.githubusercontent.com/68102477/119346481-9b0c4900-bcdd-11eb-86d8-7998e4ae42d7.png)

### Consolidated MDM 
Master data from different source systems is physically consolidated, matched, cleansed, and stored in a central repository called the MDM hub. This is typically done in batches at some regular intervals such as hourly, daily, weekly, etc. Unlike in Registry MDM, we are storing not just the keys and locations, but actual data. This consolidated master data constitutes what is called a “golden record” or the authoritative, most accurate record of that information that the organization has. The master data can then be ingested into an Enterprise Data Warehouse and used by downstream systems and users for analytics and reporting. That is why this style is also called Analytical MDM. In this style, the master data flows in one direction, more specifically from the source systems into the MDM Hub. The beauty of this architecture is that it’s still minimally intrusive to existing systems, but is more complex and expensive than Registry MDM.
![image](https://user-images.githubusercontent.com/68102477/119346709-ea527980-bcdd-11eb-9385-0ee6a7b376d2.png)

### Centralized MDM 
Instead of getting the data from source systems and combining them in the MDM Hub, the master data is created directly in the MDM hub. The golden record is then pushed from the MDM hub to the source systems for use in applications and transactions. Like in the Consolidated style, the data movement is one-way, but in the opposite direction. The data can be pushed using different techniques, but a common approach is to use is publish/subscribe where the MDM Hub publishes the updates to some shared system that the source applications subscribe to. This propagation of the golden record to the source transactional systems is the reason why this style is also called Transactional MDM. This MDM architecture provides correct and consistent data at all times. The business rules and governance policies are applied and managed consistently in one place resulting in strong data governance. However, it is very expensive and complex to set up.
![image](https://user-images.githubusercontent.com/68102477/119346820-0b1acf00-bcde-11eb-8bd7-ccb6a94508ab.png)

### Coexistence MDM 
is a hybrid between Consolidated MDM and Centralized MDM and hence it is also called Hybrid MDM. Master data is created in both the MDM hub and the source systems and therefore has to be kept in sync through bi-directional data movement. The sync typically occurs near real-time although that is not a hard and fast requirement. The source system and MDM hub can sometimes have conflicting information for the same record which needs to be reviewed and resolved by a data steward. This style is complex and requires a lot of administrative effort. It is often a transitional stage between Consolidated and Centralized styles when the organization is moving towards centralized management of master data but still has to support processes that create master data in its own systems.
![image](https://user-images.githubusercontent.com/68102477/119346884-1bcb4500-bcde-11eb-84f7-e35d0aca644a.png)

### New terms
**Registry MDM:** Master data is queried and joined using a central database that contains the registry for all master records and locations.
**Consolidated MDM:** Data from different source systems is consolidated in the MDM hub to be used by downstream systems for analytics and reporting.
**Centralized MDM:** Master data is created in the MDM hub and pushed to the source systems.
**Coexistence MDM:** Master data is created both in MDM hub and source systems and kept in sync between the two.

### Further reading
[Explanations for each MDM architecture style](https://towardsdatascience.com/understanding-various-mdm-implementation-styles-5b4c8fcbbecf)