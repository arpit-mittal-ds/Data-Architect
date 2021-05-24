This step is where you will go through the process of designing a new database for Tech ABC Corp's HR department. Using the HR dataset provided, along with the requirements gathered in step one, you are going to develop a relational database set to the 3NF.
Using Lucidchart, you will create 3 entity relationship diagrams (ERDs) to show how you developed the final design for your data.
You will submit a screen shot for each of the 3 ERDs you create. You will find detailed instructions for developing each of the ERDs below and in the starter template.

## Conceptual ERD
This is the most general level of data modeling. 
At the conceptual level, one should be thinking about creating entities that represent business objects for the database. Think broadly here. Attributes (or column names) are not required at this point, but relationship lines are required (although Crow's foot notation is not needed at this level). Create at least three entities for this model - thinking about the 3NF will aid you in deciding the type of entities to create.
Use Lucidchart's built-in template for DBMS ED Diagram UML.
An example ERD after entity creation

 ![image](https://user-images.githubusercontent.com/68102477/119338550-7a3ef600-bcd3-11eb-82ec-d057e514b3a1.png)


## Logical ERD
The logical model is the next level of refinement from the conceptual ERD. At this point, you should have normalized the data to the 3NF. Attributes should also be listed now in the ERD. You can still use human-friendly entity and attribute names in the logical model, and while relationship lines are required, Crow's foot notation is still not needed at this point.
Use Lucidchart's built-in template for DBMS ED Diagram UML.
 
An example ERD with fields added

![image](https://user-images.githubusercontent.com/68102477/119338851-dbff6000-bcd3-11eb-9b4f-64d2cc34e771.png)


## Physical ERD
The physical model is what will be built in the database. Each entity should represent a database table, complete with column names and data types. Primary keys and foreign keys should also be represented here. Primary keys should be in bold type with the (PK) designation following the field name. Foreign keys should be in normal type face, but have the designation (FK) after the column name. Finally, in the physical model, Crow's foot notation is important.
 
An example ERD with data types, primary keys and foreign keys

![image](https://user-images.githubusercontent.com/68102477/119338888-e3266e00-bcd3-11eb-9e33-c667e90f0f1f.png)


### Hints
Make sure you follow the best practices when you create the data models.
The most important idea to keep in mind is to make sure you are applying table level security for any field identified as sensitive. Due to the limited scope of this project, this is the only way to ensure only certain users can access certain information.
This dataset requires at least 5 tables to be considered 3NF. More tables may be necessary (especially when considering table level security).
