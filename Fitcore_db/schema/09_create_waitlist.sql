CREATE TABLE waitlist(
  waitlist_id SERIAL PRIMARY KEY,
  class_id INTEGER NOT NULL REFERENCES classes(class_id),
  member_id INTEGER NOT NULL REFERENCES members(member_id),
  joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) DEFAULT 'Waiting',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_member_class UNIQUE (member_id, class_id)
);