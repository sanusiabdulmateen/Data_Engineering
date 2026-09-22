-- 1. Which classes does a given member currently have booked?
SELECT m.first_name, m.last_name, c.name AS class_name, c.scheduled_date, c.start_time
FROM bookings b
JOIN members m ON b.member_id = m.member_id
JOIN classes c ON b.class_id = c.class_id
WHERE m.member_id = 1;

-- 2. How many classes is each trainer scheduled to teach this month?
SELECT t.trainer_id, t.first_name, t.last_name, COUNT(c.class_id) AS total_classes
FROM trainers t
LEFT JOIN classes c ON t.trainer_id = c.trainer_id 
  AND c.scheduled_date >= DATE_TRUNC('month', CURRENT_DATE)
  AND c.scheduled_date < DATE_TRUNC('month', CURRENT_DATE) + INTERVAL '1 month'
GROUP BY t.trainer_id, t.first_name, t.last_name;

-- 3. Which branch has the most classes scheduled?
SELECT b.name AS branch_name, COUNT(c.class_id) AS total_classes
FROM branches b
JOIN classes c ON b.branch_id = c.branch_id
GROUP BY b.branch_id, b.name
ORDER BY total_classes DESC
LIMIT 1;

-- 4. Total number of bookings per program type
SELECT pt.name AS program_type, COUNT(b.booking_id) AS total_bookings
FROM program_types pt
JOIN classes c ON pt.program_id = c.program_id
JOIN bookings b ON c.class_id = b.class_id
GROUP BY pt.program_id, pt.name;