# References

[Hadoop Cloudera Documentation](https://docs.cloudera.com/HDPDocuments/HDP3/HDP-3.1.5/data-access.html)

[Incrementally Updating a Table](https://docs.cloudera.com/HDPDocuments/HDP3/HDP-3.1.5/migrating-data/content/hive_incrementally_update_an_imported_table.html)

 merge into base_table
 
                  using incremental_table on base.id = incremental_table.id
                  
                  when matched then update set
                  
                  fieldl1=incremental_table.email,
                  
                  modified_date=incremental_table.state
                  
                  when not matched then insert
                  
                  values(incremental_table.id, incremental_table.field1, incremental_table.modified_data);

[Earlier Hadoop Releases - without ACID - Incremental Load](https://docs.cloudera.com/HDPDocuments/HDP2/HDP-2.6.5/bk_data-access/content/incrementally-updating-hive-table-with-sqoop-and-ext-table.html)

CREATE VIEW reconcile_view AS

SELECT t1.* FROM

    (SELECT * FROM base_table
    
    UNION ALL
    
    SELECT * from incremental_table) t1

JOIN
   
   (SELECT id, max(modified_date) max_modified FROM
   
    (SELECT * FROM base_table
   
     UNION ALL
   
     SELECT * from incremental_table)
   
   GROUP BY id) t2

ON t1.id = t2.id AND t1.modified_date = t2.max_modified;



