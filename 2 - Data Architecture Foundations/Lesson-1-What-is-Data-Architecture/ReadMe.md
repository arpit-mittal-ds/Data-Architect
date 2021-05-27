# Notes - What is Data Architecture


![image](https://user-images.githubusercontent.com/68102477/119766066-b3f04680-bef7-11eb-9324-ffcf845bddb4.png)


## 

Data architecture goes way beyond database design. Technology is a big part of the role, but providing solutions to business problems, that is what is at the heart of data architecture.

Think outside of the limitations of technology. Learn the business role you will be working with. Shadow some employees, ask questions, sit in on some meetings, even read up on the field. Your business partners will appreciate you showing a real interest in their work, and your insight will help guide you in providing better architected solutions for your business partners.


![image](https://user-images.githubusercontent.com/68102477/119764768-5bb84500-bef5-11eb-85d1-0cbc41eda533.png)
**What do Architects do**


The core of data architecture is finding the best answers to the following question: **what is the business trying to do and how can data help?**

This means that data architecture focuses on both the business side and the technical side. As a data architect, it is your job to understand both sides and to live on both sides. You need to be the bridge between business users and technology.

It's time to step out of your IT comfort zone!

## Data Architecture Characteristics

The main characteristics are:

**Business need**

**Data Governance:** Set of rules and standards designed to ensure proper stewardship of data. Remember: Who owns the data, Who manages the data, and Who can access the data

**Data Integrity:** Ensuring the data is accurate and consistent

**Data Retention:** Focused on how long data must be held. Set by either company policy also by government or industry mandates

**Flexibility:** Database design characteristic focused on multiple uses for data

**Scalability:** Database design characteristic focused on user and data load levels


![image](https://user-images.githubusercontent.com/68102477/119765058-d08b7f00-bef5-11eb-99b1-e1713b45e523.png)

![image](https://user-images.githubusercontent.com/68102477/119765261-498ad680-bef6-11eb-95f7-fdc4841ea104.png)

![image](https://user-images.githubusercontent.com/68102477/119765338-6d4e1c80-bef6-11eb-9237-d5da9e3d9d2f.png)

![image](https://user-images.githubusercontent.com/68102477/119765737-21e83e00-bef7-11eb-8885-000505fc2ac2.png)

![image](https://user-images.githubusercontent.com/68102477/119767026-768cb880-bef9-11eb-8f81-57a50d759f70.png)

![image](https://user-images.githubusercontent.com/68102477/119765806-3af0ef00-bef7-11eb-83fa-bc5587ffd6d3.png)

![image](https://user-images.githubusercontent.com/68102477/119765841-48a67480-bef7-11eb-91db-68e40179557e.png)

![image](https://user-images.githubusercontent.com/68102477/119767084-9623e100-bef9-11eb-8f93-e1138230bb79.png)



The main solution to the data integrity issue is to ensure information is only entered once. In addition, assigning unique IDs as an identifier ensures that each row is unique. This also increases data flexibility.

### Further Reading

[10 characteristics of data architecture](https://www.eckerson.com/articles/ten-characteristics-of-a-modern-data-architecture)

## Examples: 

Approach of Data Modeling while ensuring Data Security

![image](https://user-images.githubusercontent.com/68102477/119774771-0b95ae80-bf06-11eb-9d54-4ca2ce5345ee.png)

![image](https://user-images.githubusercontent.com/68102477/119775103-81017f00-bf06-11eb-8b1c-4fbabfbec030.png)

![image](https://user-images.githubusercontent.com/68102477/119775179-9bd3f380-bf06-11eb-8771-c18856d289ac.png)

While there are many ways to secure sensitive data this walkthrough showed you an example using table-level security. In the table-level security method, you need to move the sensitive data to a separate table and then map it to the rest of the tables. You can then limit user access to the table with sensitive data.

For those not familiar with the concept of table-level security in a database, here is a brief overview of the concept.

In order to access a database, a user needs to be given rights. These rights can be applied to the database as a whole, or restricted down to parts of the database. So if we take the example from the video. As the database manager, I could give you (as a user) rights to view the entire database, meaning every table in the database. If you were a doctor or nurse at the clinic, I might even give you rights to add data or edit existing data in the database. That would be called database-level security since I am applying the rights at the database level.

At table-level security however, we apply rights a little differently. If you were an office administrator at this clinic, I might give you rights to view the Patient, Doctor, and Visit tables only, and deny your rights to view the Drug Test table. When you logged into the database, you would see all the data found in the Patient, Doctor, and Visit tables, and you would not be able to see anything in the Drug Test table.

This is a very basic method of data security, but it is the method I recommend using in this class (especially in your final project), as it achieves the goal of securing a single data element without having to go into more advanced data security methodology.

### Further Reading
You will be covering data governance in greater detail in one of the later courses, so I chose to give you a really stripped down view of data governance. It really is the level of data governance I deal with in my job, as the greater details you will be learning about later (Master Data Management, Data Dictionaries) they are really the purview of the Data Governance Committee in my job. However, if you want a little sneak peek of what else Data Governance has to offer, here is a pretty good article. [click to read](https://searchdatamanagement.techtarget.com/definition/data-governance#:~:text=Data%20governance%20DG%20is%20the,and%20doesn't%20get%20misused)

### New terms
Database Administrator (DBA): technical position, often part of the IT infrastructure, that maintains the day to day functions of a database
Data Governance: Set of rules and standards designed to ensure proper stewardship of data. Remember: Who owns the data, Who manages the data, and Who can access the data
Single source of truth: a set of data deemed to go to reference when conflicting data is found in the system
Subject matter expert (SME): professional deemed by the organization to be an expert in a certain arena

## Exercise: Data Governance

![image](https://user-images.githubusercontent.com/68102477/119777263-41886200-bf09-11eb-99d1-09e81b0790f2.png)

### 1. Which user rights setting prevents student from seeing grades?

### 2. How to build logic to allow teachers to only see grades in the classes in their respective departments ?

### Solution: Data Governance
This exercise was all about user access and protecting data. 

1. The important part to focus on is the fact that we want to prevent students from seeing grades.
The question states we want to prevent a student from seeing grades, so our focus should be on the table that holds grade data. And the question specifically mentions students, so other users should not be affected by this rule.

So for this question, the answer is to: **Revoke select rights on grade table for students.**

2. This one is a bit more complex, as it is not simply blocking access to a table. Instead, we are applying logic to limit access to specific data. Note, this kind of data security is usually performed at an application level, over top of the database security.

![image](https://user-images.githubusercontent.com/68102477/119777523-a17f0880-bf09-11eb-9aec-828151e3161f.png)

Using the picture above as reference: If the teacher's Department ID does not match the Class Number's Department ID, then Grade for that Class Number should not be visible to the teacher.


