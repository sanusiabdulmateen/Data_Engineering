CREATE TABLE enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(student_id),
  class_id INTEGER NOT NULL REFERENCES classes(class_id),
  enrollment_date DATE DEFAULT CURRENT_DATE,
  grade VARCHAR(2),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_enrollment UNIQUE (student_id, class_id)
);