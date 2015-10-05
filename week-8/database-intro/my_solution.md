>1. Select all data for all states.
select * from states;

>2. Select all data for all regions.
select * from regions;

>3. Select the state_name and population for all states.
select state_name, population from states;

>4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
select state_name, population from states order by population desc;

>5. Select the state_name for the states in region 7.
select state_name from states where region_id = 7;

>6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
select state_name, population_density from states where population_density > 50 order by population_density asc;

>7. Select the state_name for states with a population between 1 million and 1.5 million people.
select state_name from states where population > 1000000 and population < 1500000;

>8. Select the state_name and region_id for states ordered by region in ascending order.
select state_name, region_id from states order by region_id asc;

>9. Select the region_name for the regions with "Central" in the name.
select region_name from regions where region_name like '%Central%';

>10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name.
select r.region_name, s.state_name from states s join regions r on r.id = s.region_id order by s.region_id;

![schema_design](https://github.com/nathanmpark/phase-0/blob/master/week-8/database-intro/schema_design.png "schema_design")

Reflections:

>What are databases for?
Databases are for storing data. They are an important part of software development as most information is stored in tables that relate to one another.

>What is a one-to-many relationship?
One-to-many relationships have to do with how certain tables relate to one another. When designing a schema, you must identify which entities can relate to many or one object. For example, One child can have only one biological mother and one biological father. However, a father and/or mother can have many children. Thus, this creates a one-to-many relationship.

>What is a primary key? What is a foreign key? How can you determine which is which?
The primary key is usually a sequential number used as an id to identify the rows within a table. Thus, every entry has a unique identifier (primary key). The foreign key is simply a reference to that primary key that can be found on another table. It is useful when referencing data based on ids that are unique rather than text which can be mispelled. You can determine which is which, based on the name of the id column, where is lies within the table, and also based on the data model, which shows the relationship to tables. Also, a primary key will be coupled with information that cannot be found else where or is being connected to reference that table's data.

>How can you select information out of a SQL database? What are some general guidelines for that?
You can select data out of a SQL database using ANSI standard language and by formulating valid SQL statements. Here are some tips:

- Always end with a semi-colon.
- Use * when selecting all the data from a table or series of tables.
- Make sure to check the order of your joins.
- Check for nested statements, etc.
- Group clauses in this order:
SELECT select_list [ INTO new_table ]

[ FROM table_source ] [ WHERE search_condition ]

[ GROUP BY group_by_expression ]

[ HAVING search_condition ]

[ ORDER BY order_expression [ ASC | DESC ] ]