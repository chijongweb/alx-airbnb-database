
-- Initial Query: 

SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name,
    p.property_id,
    p.address AS property_address,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
INNER JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01';

--Analyze performance of initial query

EXPLAIN
SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name,
    p.property_id,
    p.address AS property_address,
    pay.payment_id,
    pay.amount AS payment_amount,
    pay.payment_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
INNER JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01';

--Index Creation to Improve Performance 

CREATE INDEX IF NOT EXISTS idx_booking_user ON bookings(user_id);
CREATE INDEX IF NOT EXISTS idx_booking_property ON bookings(property_id);
CREATE INDEX IF NOT EXISTS idx_booking_date ON bookings(booking_date);
CREATE INDEX IF NOT EXISTS idx_payment_booking ON payments(booking_id);

--Refactored Query: Use LEFT JOIN on payments and filter bookings by date 

SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name,
    p.property_id,
    p.address AS property_address,
    pay.payment_id,
    pay.amount AS payment_amount
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01';

--Analyze performance of refactored query 

EXPLAIN
SELECT
    b.booking_id,
    b.booking_date,
    u.user_id,
    u.name AS user_name,
    p.property_id,
    p.address AS property_address,
    pay.payment_id,
    pay.amount AS payment_amount
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.booking_date >= '2024-01-01';
