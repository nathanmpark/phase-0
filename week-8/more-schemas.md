One-to-One Relationship:

The screen shot below depicts a one-to-one relationship because there can only ever be one driver for every moving car. And every moving car can only ever have one current driver. There can never be a situation where more than one person is driving the same car (assuming it has one steering wheel), and one person can never drive more than one car at a time. This distinction is for a moving car. On a more general level, a car can definitely be driven by different people, and somone can drive more than just one car.

![one-to-one](https://github.com/nathanmpark/phase-0/blob/master/week-8/imgs/one-to-one.png "one-to-one")

Many-to-Many Relationship:

![many-to-many](https://github.com/nathanmpark/phase-0/blob/master/week-8/imgs/many-to-many.png "many-to-many")

>What is a one-to-one database?

A one-to-one database is where the tables have one to one relationships to one another. This means they have a unique connection to one another, each table row would only connect to another specific table row within the database.

>When would you use a one-to-one database? (Think generally, not in terms of the example you created).

You would use a one to one database when relating individual ownership to a given object. For example, one person can get one account through one email. You would use it when limiting and enforcing the one to one relationship is maintained throughout the entire system.

>What is a many-to-many database?

A many-to-many databse is where the tables have many to many relationships. This means that given rows on a table can connect to many other tables. And vice versa.

>When would you use a many-to-many database? (Think generally, not in terms of the example you created).

A many to many databse would be used to represent the relationships between items that may be plentiful or is not strictly stuck to a one to one relationship. For example, a book can be owned by many people, and a person can own many differnt books.

>What is confusing about database schemas? What makes sense?

I think the most confusing part is thinking about database schemas in terms of tables, and then breaking down tables into columns.