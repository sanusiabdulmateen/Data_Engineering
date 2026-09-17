CREATE TABLE bookings (
  booking_id SERIAL PRIMARY KEY,
  member_id INTEGER NOT NULL REFERENCES members(member_id),
  class_id INTEGER NOT NULL REFERENCES classes(class_id),
  booking_date DATE DEFAULT CURRENT_DATE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT unique_booking UNIQUE (member_id, class_id)
);