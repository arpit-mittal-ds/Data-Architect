# Notes

## Learning Objectives for this lesson are:

Understand master data and golden record.

Understand the different Master Data Management architectures.

Identify the right Master Data Management architecture that is best suited for the company's needs.

Create the golden record for a master data entity.

Setup Master Data Governance processes.

Understand the role of data stewards in Master Data Management.


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

## Implementing a Master Data Management System requires a HUGE investment of money and resources. There has to be a strong business justification for companies to undertake this effort.
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
