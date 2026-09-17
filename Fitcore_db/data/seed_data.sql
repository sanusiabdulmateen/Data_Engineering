INSERT INTO branches (branch_id, name, location) VALUES
(1, 'Downtown Branch', '123 Main St'),
(2, 'Uptown Branch', '45 Elm Ave'),
(3, 'Riverside Branch', '78 River Rd');
 
INSERT INTO trainers (trainer_id, first_name, last_name, email, phone_number, date_of_birth, hire_date, salary, branch_id) VALUES
(1, 'John', 'Carter', 'john.carter@fitcore.com', '555 0101', '1990-04-12', '2022-01-10', 45000.00, 1),
(2, 'Maria', 'Gomez', 'maria.gomez@fitcore.com', '555 0102', '1988-09-23', '2021-06-01', 48000.00, 2),
(3, 'David', 'Kim', 'david.kim@fitcore.com', '555 0103', '1992-02-17', '2023-03-15', 42000.00, 1),
(4, 'Sarah', 'Ahmed', 'sarah.ahmed@fitcore.com', '555 0104', '1985-11-05', '2020-08-20', 51000.00, 3),
(5, 'Tom', 'Wright', 'tom.wright@fitcore.com', '555 0105', '1995-07-30', '2023-09-01', 39000.00, 2);
 
INSERT INTO members (member_id, first_name, last_name, email, phone_number, date_of_birth, enrollment_date, branch_id, is_active) VALUES
(1, 'Amina', 'Yusuf', 'amina.yusuf@example.com', '555 0201', '1998-01-15', '2024-01-05', 1, TRUE),
(2, 'Chidi', 'Okafor', 'chidi.okafor@example.com', '555 0202', '1995-06-22', '2024-01-10', 1, TRUE),
(3, 'Ngozi', 'Bello', 'ngozi.bello@example.com', '555 0203', '2000-03-09', '2024-02-01', 2, TRUE),
(4, 'Femi', 'Adeyemi', 'femi.adeyemi@example.com', '555 0204', '1993-12-30', '2024-02-14', 2, FALSE),
(5, 'Grace', 'Eze', 'grace.eze@example.com', '555 0205', '1997-08-18', '2024-03-01', 3, TRUE),
(6, 'Ibrahim', 'Sule', 'ibrahim.sule@example.com', '555 0206', '1990-05-25', '2024-03-10', 3, TRUE),
(7, 'Blessing', 'Nwachukwu', 'blessing.nwachukwu@example.com', '555 0207', '1999-10-02', '2024-04-01', 1, TRUE),
(8, 'Kunle', 'Fashola', 'kunle.fashola@example.com', '555 0208', '1996-02-27', '2024-04-15', 2, TRUE);
 
INSERT INTO program_types (program_id, name, description) VALUES
(1, 'Yoga', 'Low impact stretching and breathing focused sessions'),
(2, 'Spin', 'High intensity indoor cycling sessions'),
(3, 'Strength Training', 'Weight based resistance training sessions'),
(4, 'Pilates', 'Core focused low impact conditioning sessions');
 
INSERT INTO classes (class_id, name, scheduled_date, start_time, capacity, program_id, branch_id, trainer_id) VALUES
(1, 'Morning Yoga', '2024-05-06', '07:00', 15, 1, 1, 1),
(2, 'Sunrise Spin', '2024-05-06', '06:30', 20, 2, 2, 2),
(3, 'Strength Basics', '2024-05-06', '09:00', 12, 3, 1, 3),
(4, 'Evening Pilates', '2024-05-07', '18:00', 15, 4, 3, 4),
(5, 'Power Spin', '2024-05-07', '17:30', 20, 2, 2, 5),
(6, 'Yoga Flow', '2024-05-08', '07:30', 15, 1, 1, 1),
(7, 'Strength Circuit', '2024-05-08', '10:00', 12, 3, 1, 3),
(8, 'Core Pilates', '2024-05-09', '18:30', 15, 4, 3, 4),
(9, 'Weekend Spin', '2024-05-11', '08:00', 20, 2, 2, 2),
(10, 'Relax Yoga', '2024-05-11', '17:00', 15, 1, 2, 5);
 
INSERT INTO bookings (booking_id, member_id, class_id, booking_date) VALUES
(1, 1, 1, '2024-05-01'),
(2, 1, 3, '2024-05-01'),
(3, 2, 1, '2024-05-02'),
(4, 2, 7, '2024-05-03'),
(5, 3, 2, '2024-05-02'),
(6, 3, 5, '2024-05-04'),
(7, 4, 2, '2024-05-02'),
(8, 5, 4, '2024-05-03'),
(9, 5, 8, '2024-05-05'),
(10, 6, 4, '2024-05-03'),
(11, 7, 6, '2024-05-04'),
(12, 7, 1, '2024-05-04'),
(13, 8, 9, '2024-05-06'),
(14, 8, 10, '2024-05-06'),
(15, 2, 10, '2024-05-07');