CREATE TABLE courses (
  course_id SERIAL PRIMARY KEY,
  course_code VARCHAR(20) UNIQUE NOT NULL,
  course_title VARCHAR(100),
  description TEXT,
  credit INTEGER CHECK (credit > 0 AND credit <= 6),
  department_id INTEGER NOT NULL REFERENCES departments(department_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
