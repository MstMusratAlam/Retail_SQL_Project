# Retail_SQL_Project

Small retail database project: customers, products, orders, order_items, and inventory.

Provide SQL schema, seed data, and example queries so others can reproduce the dataset and run example analyses.

- sql/ddl/create_tables.sql — DDL to create tables (Postgres-friendly).
- sql/dml/seed_data.sql — Sample data to seed the database.
- sql/queries/example_queries.sql — Example queries and reports.
- docs/er_diagram.puml — PlantUML ER diagram (render with PlantUML).
- LICENSE — MIT license.
- .gitignore

- A relational DB (Postgres recommended). Adjust types if using MySQL/SQLite.
- psql (for Postgres) or another client.

1. Create database:
   createdb retail_db
2. Run DDL:
   psql -d retail_db -f sql/ddl/create_tables.sql
3. Load seed data:
   psql -d retail_db -f sql/dml/seed_data.sql
4. Run example queries:
   psql -d retail_db -f sql/queries/example_queries.sql

- The DDL targets Postgres; see header comments to change SERIAL/AUTO_INCREMENT or generated columns for other RDBMS.
- If you prefer, keep the PDF as project deliverable, but SQL files let others reproduce the work.
