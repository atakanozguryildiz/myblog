---
title: "Psycopg2 Wrapper"
description: "Simple wrapper for psycopg2 package"
date: 2020-01-08T10:06:36+03:00
link: https://github.com/atakanozguryildiz/psycopg2-wrapper
screenshot: Postgresql.png
draft: false
---

Very simple psycopg2 wrapper for executing sql commands with one line code. It manages database connections and cursor easily. It' s developed for basic usages.

It uses client side connection pool and connection size is configurable.
It uses client side cursor.
It manages creating and closing of cursors and connections.
It has easy interface to execute query, only one method.
It uses transaction block for crud(insert-update-delete-select) operations.
It uses auto commit mode for non crud operations.
