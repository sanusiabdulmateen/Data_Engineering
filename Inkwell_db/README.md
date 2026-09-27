# InkWell Books Database

A practice relational database project built as the second, harder exercise in
this series, after FitCore. The focus here is two many to many relationships,
one of them (order_items) carrying its own attributes rather than just linking
two tables together.

## Overview

InkWell Books is an online bookstore. Each book is published by one publisher
but can have multiple authors, and an author can write multiple books.
Customers place orders, and a single order can contain several different
books, each in its own quantity, at whatever price was in effect when the
order was placed.

## Schema

| Table | Purpose |
|---|---|
| `publishers` | Companies that publish books |
| `authors` | Writers. Linked to books through `book_authors` |
| `books` | Individual titles, each tied to one publisher |
| `book_authors` | Junction table resolving the many to many between books and authors |
| `customers` | People who create accounts and place orders |
| `orders` | One purchase placed by one customer |
| `order_items` | Junction table connecting orders to books, storing quantity and the price at the time of purchase |

Full column definitions, data types, and constraints are in `inkwell_seed_data.sql`.

Details of the task
[text](../../../../Downloads/FitCore_Database_Practice_Task.pdf)