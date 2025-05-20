#  Taxi Management System (SQL + GUI)

This project simulates a full-scale taxi fleet management system using a relational database built in PostgreSQL. It includes a Python GUI interface, normalized schema, and complete SQL scripts for creation, data manipulation, queries, views, stored procedures, and triggers.

---

##  Features

- 3NF schema with 20+ interrelated tables
- Business entities: taxis, drivers, customers, trips, payments, maintenance, etc.
- SQL scripts for:
  - Table creation (`Create.sql`)
  - Inserts (`Inserts.sql`)
  - Updates (`Updates.sql`)
  - Queries (`Queries.sql`)
  - Views (`Views.sql`)
  - Triggers (`TG 1.sql`)
  - Stored procedures (`SP.sql`)
  - Constraint checks (`ConstraintsCheck.sql`)
- Python GUI frontend (`main.py`) for interacting with the database

---

## Tech Stack

- **Database:** PostgreSQL
- **Interface:** pgAdmin, Python
- **Languages:** SQL, Python

---

## File Overview

| File | Purpose |
|------|---------|
| `Create.sql` | DDL statements to build the schema |
| `Inserts.sql` | Sample data insertions |
| `Updates.sql` | Updates for testing modifications |
| `Queries.sql` | Predefined SQL queries |
| `Views.sql` | Defined views for reporting |
| `SP.sql` | Stored procedures |
| `TG 1.sql` | Triggers |
| `ConstraintsCheck.sql` | Validation & integrity constraints |
| `main.py` | Basic GUI to interact with database |
| `Documentation.docx` | Detailed project report |

---

##  How to Run

1. Open pgAdmin and create a new database (e.g. `taxi_fleet`)
2. Run the SQL scripts in this order:
   - `Create.sql`
   - `Inserts.sql`
   - `Updates.sql`
   - `Views.sql`
   - `SP.sql`
   - `TG 1.sql`
3. Run `main.py` (requires Python + psycopg2 installed)

---

## Documentation

📝 Full system design and table specifications are in [`Documentation.docx`](./Documentation.docx)

---

Feel free to ⭐ this repo or fork it for your own use!
