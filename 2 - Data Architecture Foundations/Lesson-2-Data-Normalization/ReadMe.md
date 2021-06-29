# Notes

## LESSON OBJECTIVES

1. NORMALIZATION
2. THREE NORMAL FORMS
3. DENORMALIZATION


# DATA NORMALIZATION

[Database Normalization](https://en.wikipedia.org/wiki/Database_normalization) is the process of **structuring a database**, usually a relational database, in accordance with a series of so-called **normal forms** in order to **reduce data redundancy** and **improve data integrity**. 

Normalization divides larger tables into smaller tables and links them using relationships. 

## Objectives of Normalization - Reduction of Anomalies and Data Redundancy

When an attempt is made to modify (update, insert into, or delete from) a relation, the following undesirable side-effects may arise in relations that have not been sufficiently normalized:

## Update Anomaly

![image](https://user-images.githubusercontent.com/68102477/121621215-17a97080-caaf-11eb-8b57-ee1325a24d93.png)

The same information can be expressed on multiple rows; therefore updates to the relation may result in logical inconsistencies. For example, each record in an "Employees' Skills" relation might contain an Employee ID, Employee Address, and Skill; thus a change of address for a particular employee may need to be applied to multiple records (one for each skill). If the update is only partially successful – the employee's address is updated on some records but not others – then the relation is left in an inconsistent state. Specifically, the relation provides conflicting answers to the question of what this particular employee's address is. This phenomenon is known as an update anomaly.

## Insertion Anomaly

![image](https://user-images.githubusercontent.com/68102477/121621333-50e1e080-caaf-11eb-87ee-87a39f9a3ba5.png)

There are circumstances in which certain facts cannot be recorded at all. For example, each record in a "Faculty and Their Courses" relation might contain a Faculty ID, Faculty Name, Faculty Hire Date, and Course Code. Therefore, we can record the details of any faculty member who teaches at least one course, but we cannot record a newly hired faculty member who has not yet been assigned to teach any courses, except by setting the Course Code to null. This phenomenon is known as an insertion anomaly.

## Deletion Anomaly

![image](https://user-images.githubusercontent.com/68102477/121621409-740c9000-caaf-11eb-9888-fb25e6a55317.png)

Under certain circumstances, deletion of data representing certain facts necessitates deletion of data representing completely different facts. The "Faculty and Their Courses" relation described in the previous example suffers from this type of anomaly, for if a faculty member temporarily ceases to be assigned to any courses, we must delete the last of the records on which that faculty member appears, effectively also deleting the faculty member, unless we set the Course Code to null. This phenomenon is known as a deletion anomaly.


## [Functional Dependency](https://en.wikipedia.org/wiki/Functional_dependency)

The attribute B is functionally dependent on the attribute A if each value of A determines one and only one value of B. A -> B

**Example**

| Employee ID   | Employee name | Department ID  | Department name |
| ------------- |:-------------:| --------------:| ---------------:|
|      0001     | Arpit Mittal  |       1        | Human Resources |
|      0002     | Sasi          |       2        | Marketing       |
|      0003     | John          |       3        | Sales           |

	
### 1. Department ID  -> Department name
If we know the "department_id" value then we would know the "department_name" value as well. For example, if we have following new record:

|      XXX     | XXX          |       1        |       ??     |

we can infer that "Department name" value in above record has to be "Human Resources". So Department name is functionally dependent on Department ID.
Note that DepartmentName is not functionally dependent on Employee ID. For example even if we know an employee id we CANNOT infer the Department Name:

|      004     | Pomana          |              |      ??     |


### Two types of functional dependencies that are of special interest in normalization are - Prtial Dependencies and Transitive Dependencies. 

**A partial dependency** exists when there is a functional dependence in which the determinant is only part of the primary key

For example, if  (A, B) is the primary key and (A, B) ->  (C, D) however B ->  C, then the functional dependence B -> C is a partial dependency because only part of the primary key (B) is needed to determine the value of C. 

Partial dependencies tend to be straightforward and easy to identify.

In the following example, primary key is a composite key of TEACHER_ID and SUBJECT. However **non-key attribute TEACHER_AGE is dependent only on just TEACHER_ID**

| TEACHER_ID    | SUBJECT       | TEACHER_AGE    | 
| ------------- |:-------------:| --------------:| 
|      01       | Chemistry     |       30       | 
|      02       | Biology       |       25       | 
|      01       | English       |       30       | 

	

**A transitive dependency** exists when there are functional dependencies such that X -> Y, Y -> Z, and X is the primary key. In that case, the dependency X -> Z is a transitive dependency because X determines the value of Z via Y. 

Unlike partial dependencies, transitive dependencies are more **difficult to identify** among a set of data. Fortunately, there is an effective way to identify transitive dependencies: they occur **only when a functional dependence exists among non-prime attributes.**

**The dependency Y -> Z signals that a transitive dependency exists. Hence, throughout the discussion of the normalization process, the existence of a functional dependence among nonprime attributes will be considered a sign of a transitive dependency. **

![image](https://user-images.githubusercontent.com/68102477/123750907-761d7e00-d8fa-11eb-86f9-79e044fc1e86.png)

Since "Bank" values are dependent on just non-key attribute Bank_code this is a transitive dependency

# NORMAL FORMS

## FIRST NORMAL FORM
![image](https://user-images.githubusercontent.com/68102477/122348066-1637e680-cf8e-11eb-9205-d70e3170255d.png)

![image](https://user-images.githubusercontent.com/68102477/122348092-1f28b800-cf8e-11eb-9fa5-e550e462445f.png)

### No Repeated Groupings
![image](https://user-images.githubusercontent.com/68102477/122348348-6adb6180-cf8e-11eb-98ec-896fe849932f.png)

![image](https://user-images.githubusercontent.com/68102477/121629931-855d9880-cabf-11eb-8d88-8d4a165d9806.png)

Here you see Movies Rented column has multiple values. 

**Rules for first normal form**

Each table **cell should contain a single value.**

Each record needs to be unique - **No Duplicate Records.**

Every table in first normal form must have a **primary key.**

![image](https://user-images.githubusercontent.com/68102477/121629997-a7571b00-cabf-11eb-93ae-51b87d7eb9ac.png)

### First Normal form Solution
![image](https://user-images.githubusercontent.com/68102477/122348430-7fb7f500-cf8e-11eb-9ac4-6aad2a4284e8.png)

1NF: ensure atomic values, no repeated groupings, and no reduplicated rows

## SECOND NORMAL FORM

**If a relation has a composite key, all non-key attributes must depend on all components of the key. If you have a table where some non-key attributes don’t depend on all components of the key, break the table up into two or more tables so that — in each of the new tables — all non-key attributes depend on all components of the primary key.**

If a relation does not have a composite PK then all the attributes should only reply on the primary key. 

**To convert a table to 2nd Normal Form - Make New Tables to Eliminate Partial Dependencies**


![image](https://user-images.githubusercontent.com/68102477/121640869-d2e30100-cad1-11eb-9f25-7200210470c2.png)

![image](https://user-images.githubusercontent.com/68102477/121640877-d6768800-cad1-11eb-8f19-7a0eebd2a288.png)

![image](https://user-images.githubusercontent.com/68102477/122349493-a88cba00-cf8f-11eb-8d7e-4cd4d0c4d390.png)

![image](https://user-images.githubusercontent.com/68102477/122349666-cce89680-cf8f-11eb-90c5-a46bc6f37c95.png)

ID is just a surrogate key - actual business key or the data that we have modelled in this table is Name, hence partial dependencies are looked from Name perspective.
Breed and Species are completely separate and do not have any relationship with the Name or Id of the dog, hence moving them to separate table will remove depandant columns and make the tables in second normal form.

![image](https://user-images.githubusercontent.com/68102477/122349434-99a60780-cf8f-11eb-8863-4a0f0767ca33.png)

## THIRD NORMAL FORM

Tables in second normal form are especially vulnerable to some types of modification anomalies — in particular, those that come from transitive dependencies.

**A transitive dependency occurs when one attribute depends on a second attribute, which depends on a third attribute. Deletions in a table with such a dependency can cause unwanted information loss. A relation in third normal form is a relation in second normal form with no transitive dependencies.**

![image](https://user-images.githubusercontent.com/68102477/122350317-762f8c80-cf90-11eb-9ceb-bc4ed057967c.png)

3NF: bring 2NF and remove transitive dependencies (ID, species, and breed)

![image](https://user-images.githubusercontent.com/68102477/122350528-a24b0d80-cf90-11eb-8537-68ab35aab707.png)

## Data Normalization

 a method of reorganizing data for use in a relational database. 
 
![image](https://user-images.githubusercontent.com/68102477/122330798-2395a680-cf77-11eb-86d6-a386d3cc8b37.png)

![image](https://user-images.githubusercontent.com/68102477/122330840-34461c80-cf77-11eb-99ee-98e054294b27.png)

![image](https://user-images.githubusercontent.com/68102477/122330908-52ac1800-cf77-11eb-88a6-d800931a39d7.png)

![image](https://user-images.githubusercontent.com/68102477/122331617-791e8300-cf78-11eb-8f1f-10f605c71c72.png)

![image](https://user-images.githubusercontent.com/68102477/122331441-2e047000-cf78-11eb-9ea5-ebc283aeae30.png)

we normalize data to improve writing speed into a database and to maintain data integrity. We denormalize data to improve reading speed, think data warehouses, and reporting structures.

Some benefits of normalized data are:

Increased writing speed
Enforces Data Integrity
Saves memory
Excellent for transaction-based data work - where writing speed is a concern
The downside of normalized data:

Not easy to read
The benefit of denormalized data:

Better reading speed
The downside of denormalized data:

Data is not refreshed often



![image](https://user-images.githubusercontent.com/68102477/122331487-45435d80-cf78-11eb-94eb-53676d3b8467.png)

### Further reading
[article 1](https://www.essentialsql.com/get-ready-to-learn-sql-11-database-third-normal-form-explained-in-simple-english/)

[article 2](https://www.guru99.com/database-normalization.html)

[article 3](https://www.geeksforgeeks.org/third-normal-form-3nf/)


## [Denormalization](https://en.wikipedia.org/wiki/Denormalization)

is the process improving the read performance of a database at the expense of losing some write performance by adding redundant copies of data.

Drawback of denormalization: u may need to update at multiple places.

JOINS on the database allow for outstanding flexibility but are extremely slow. If you are dealing with heavy reads on your database, you may want to think about de-normalizing your tables. You get your data into normalized form, and then you proceed with denormalization. So, denormalization comes after normalization.

Done to increase performance.

Data redundancy increases.

When read >> write

We will look denormalization in depth while modelling data in Data Warehouses.

![image](https://user-images.githubusercontent.com/68102477/122331535-568c6a00-cf78-11eb-8769-61ba1c20984a.png)




### Example

![image](https://user-images.githubusercontent.com/68102477/122355662-6c5c5800-cf95-11eb-9d0b-e63a87df8380.png)

**1 NF** - have atomic value, no repeated groupings, and no repeated rows

It is reasonable to tell customer that we are only gonna track 2 phone numbers, so the table is not expected to grow and hence this is not considered as repeating groups. 
Data and Use of data shoul drive the modelling decisions. 
![image](https://user-images.githubusercontent.com/68102477/122355755-8007be80-cf95-11eb-81e7-58cb899e284c.png)

![image](https://user-images.githubusercontent.com/68102477/122356119-d543d000-cf95-11eb-8416-061448b46b3f.png)

![image](https://user-images.githubusercontent.com/68102477/123602658-545dc180-d83c-11eb-9a88-565346b335e9.png)

![image](https://user-images.githubusercontent.com/68102477/122356197-e7be0980-cf95-11eb-9d53-c24eff5dcfab.png)

![image](https://user-images.githubusercontent.com/68102477/122356267-f86e7f80-cf95-11eb-9010-1052f23d7212.png)

![image](https://user-images.githubusercontent.com/68102477/122356298-00c6ba80-cf96-11eb-9f45-b87e3753decf.png)


**2NF: bring 1NF, ensure no duplicates and every column depends on the unique ID**
Assumming customers can have only 1 car.

![image](https://user-images.githubusercontent.com/68102477/122356743-6dda5000-cf96-11eb-8b76-e717c107be64.png)


![image](https://user-images.githubusercontent.com/68102477/122357020-af6afb00-cf96-11eb-9332-8b6decd3f0b7.png)

![image](https://user-images.githubusercontent.com/68102477/122357137-cf022380-cf96-11eb-845d-70ddd1895562.png)

![image](https://user-images.githubusercontent.com/68102477/122357439-1a1c3680-cf97-11eb-8125-5d06c035b615.png)

![image](https://user-images.githubusercontent.com/68102477/122357529-315b2400-cf97-11eb-8b0b-6405391eb35c.png)

## Summary 

![image](https://user-images.githubusercontent.com/68102477/123603586-5ecc8b00-d83d-11eb-9f5c-300476eee8a2.png)

Reminder: After each normal form, don't forget to add relationships to entities so that all the information is linked together.

Note: the goal of normalization is improving performance. Adding too many entities would reduce performance. In the real world, there are many cases where it makes sense to not create many entities although it doesn't meet the normalization rules. The rule of thumb is - if you won't run into the risk of duplicates, then you don’t need to split the data into another entity.

### 1.  First Normal Form (1NF):

•	Atomic values: each cell contains unique and single values

•	Be able to add data without altering tables	

•	Separate different relations into different tables

•	Keep relationships between tables together with foreign keys


### 2.	Second Normal Form (2NF):

•	Have reached 1NF

•	All columns in the table must rely on the Primary Key

•	If there is a composite PK then no column should depend just on the part of PK…..each column should depend upon the whole PK.

### 3.	Third Normal Form (3NF):

•	Must be in 2nd Normal Form

•	No transitive dependencies

•	Remember, transitive dependencies you are trying to maintain is that to get from A-> C, you want to avoid going through B.

**When to use 3NF:**

When you want to update data, we want to be able to do in just 1 place. We want to avoid updating the table in the Customers Detail table 

Third normal form is the maximum normal form that should be attempted while doing practical data modeling.

Drawback of Normalization - Joins among tables causes queries, which read data from the tables, to run slowly. 

### Exercise: 

![image](https://user-images.githubusercontent.com/68102477/122374485-c2d19280-cfa5-11eb-9d37-a7f0be9808d4.png)

**Follow these steps to normalize to 3NF.**

Build a Hierarchy first, then group data to create basic entities (tables) based on the hierarchy.

Think about the dependencies, duplications, and transitive dependency issues of each column in an entity to decide if a column should be moved out.

Decide the relationships among entities.

### Solution

1. Write Business Rules or Build a Hierarchy first
2. Group data to create basic entities (tables) based on the hierarchy.
3. Identify PK, FK, Attributes
4. Check whether it is in 3NF


https://user-images.githubusercontent.com/68102477/123607362-2af36480-d841-11eb-8e04-d1d22483c1e4.mp4


Althought the data is already in first normal form. however the data has repeating values and hence we need to break it up into entities to achieve 2nd and 3rd normal forms.
![image](https://user-images.githubusercontent.com/68102477/123606388-309c7a80-d840-11eb-90e1-47094bb9afce.png)

![image](https://user-images.githubusercontent.com/68102477/123606670-7bb68d80-d840-11eb-8045-dfbdb329ec5c.png)

![image](https://user-images.githubusercontent.com/68102477/123607160-f384b800-d840-11eb-9fd8-519474c1eb8e.png)

![image](https://user-images.githubusercontent.com/68102477/123604872-9a1b8980-d83e-11eb-8ab1-fc9f31208f73.png)


## Example LIVE Dashboard


Not all real-world problems can be solved in a straightforward manner. Normalized and denormalized relational models are guidelines and provide great stepping off points, but often, you will find yourself having to design something a little more in the middle space between the two models.

So learn and internalized the 3NF as a standard transactional relational model, but know it is only a guide.

![image](https://user-images.githubusercontent.com/68102477/123608422-16639c00-d842-11eb-84bd-e3f4e14af06a.png)

### Problems

![image](https://user-images.githubusercontent.com/68102477/123608585-385d1e80-d842-11eb-9390-03004d38ee6b.png)

### Solution

![image](https://user-images.githubusercontent.com/68102477/123608697-5165cf80-d842-11eb-8ae3-a43db45d2c65.png)

![image](https://user-images.githubusercontent.com/68102477/123608361-08ae1680-d842-11eb-8cba-93eb5b783650.png)

## Further reading
Below you can find two articles on data modeling. The second one dives into the normalization, which we will cover in coming sections, but may serve as a nice introduction to the concept for you: [article 1](https://www.guru99.com/data-modelling-conceptual-logical.html#:~:text=Data%20modeling%20data%20modelling%20is,data%20objects%2C%20and%20the%20rules) and [article 2](https://analytics4all.org/2016/04/02/data-modeling/)

Here are some articles on the database schema. The first one is from the LucidChart website (the ERD design tool we will be using later in the course): [article 1](https://www.lucidchart.com/pages/database-diagram/database-schema) and [article 2](https://beginnersbook.com/2015/04/instance-and-schema-in-dbms/)

Normalization can be a confusing subject for some people, so here are a few more explanations on the 3NF. If you had trouble following my explanation, maybe one of the following articles will help. [article 1](https://www.essentialsql.com/get-ready-to-learn-sql-11-database-third-normal-form-explained-in-simple-english/), [article 2](https://www.guru99.com/database-normalization.html) and [article 3](https://www.guru99.com/database-normalization.html)




