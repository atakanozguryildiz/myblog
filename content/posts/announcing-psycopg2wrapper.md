---
title: "Announcing psycopg2-wrapper"
date: 2020-01-08T10:26:59+03:00
slug: announcing-psycopg2-wrapper
tags : [
    "python",
    "postgresql",
    "psycopg2",
    "development"
]
categories : [
    "development",
    "python"
]
draft: false
---
psycopg2 is a postgresql database adapter for database operations. It is used behind many orm tools. 

I prefer to use orm tools for big projects and psycopg2 for small projects. When I use psycopg2 in my projects, I realize that I always create a database.py and use it to execute sql commands so I have decided to create a package and publish it.

It' s very basic psycopg2 wrapper and it works fine for basic usage. Some of features are listed below.

* It uses client side connection pool and connection size is configurable.
* It uses client side cursor.
* It manages creating and closing of cursors and connections.
* It has easy interface to execute query, only one method.
* It uses transaction block for crud(insert-update-delete-select) operations.
* It uses auto commit mode for non crud operations.

For installing;
```
pip install psycopg2-wrapper
```

For usage;
```
from psycopg2_wrapper.database import Database
database = Database(host='host_name', database='db_name', user='db_user', password='db_password')
result = database.execute_query('select * from user where id=%s', (1,))
```
