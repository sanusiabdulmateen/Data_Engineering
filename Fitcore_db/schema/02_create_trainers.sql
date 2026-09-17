CREATE TABLE trainers (
  trainer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  phone_number VARCHAR(20),
  date_of_birth DATE,
  hire_date DATE DEFAULT CURRENT_DATE,
  salary NUMERIC(10,2),
  branch_id INTEGER NOT NULL REFERENCES branches(branch_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);