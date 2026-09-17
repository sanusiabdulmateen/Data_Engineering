CREATE TABLE classes (
  class_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  scheduled_date DATE NOT NULL,
  start_time TIME NOT NULL,
  capacity INTEGER DEFAULT 20 NOT NULL,
  program_id INTEGER NOT NULL REFERENCES program_types(program_id),
  branch_id INTEGER NOT NULL REFERENCES branches(branch_id),
  trainer_id INTEGER NOT NULL REFERENCES trainers(trainer_id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);