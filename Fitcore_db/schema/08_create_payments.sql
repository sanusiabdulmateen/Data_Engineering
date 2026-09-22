CREATE TABLE payment(
  payment_id SERIAL PRIMARY KEY,
  member_id INTEGER NOT NULL REFERENCES members(member_id),
  plan_id INTEGER NOT NULL REFERENCES membership_plans(plan_id),
  amount NUMERIC (10,2) NOT NULL,
  payment_method VARCHAR(30),
  payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);