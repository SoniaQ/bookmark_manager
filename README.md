Bookmark Manager
-----------
-----------


Task
-----
```
As a user
So that I can quickly access websites I've saved
I'd like to see them listed as bookmarks

As a user
So that I can update my bookmarks
I'd like to be able to add or remove a website to/from my list
```


Domain Model
-------------

<!-- ![Domain Model](https://github.com/SoniaQ/bookmark_manager/blob/master/images/domain_model.png) -->
![Domain Model](/images/domain_model.png)

SQL Instructions
--------------

1. Connect to `psql`
2. Create the database using the `psql` command CREATE DATABASE `bookmark_manager`;
3. Connect to the database using the `pqsl` command \c `bookmark_manager`;
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`

### To set up the database

Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```
To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.
