-- Check capacity before inserting in application code or store procedure
INSERT INTO Bookings (member_id, class_id)
SELECT 101, 5
WHERE (
    SELECT COUNT(*) FROM Bookings WHERE class_id = 5
) < (
    SELECT capacity FROM Classes WHERE class_id = 5
);