CREATE TABLE departments (
  department_id SERIAL PRIMARY KEY,
  name varchar(100) UNIQUE NOT NULL,
  building VARCHAR(50),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
