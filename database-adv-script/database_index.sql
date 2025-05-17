EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1234;
-- Indexes on User table
CREATE UNIQUE INDEX idx_user_email ON users(email);

-- Indexes on Booking table
CREATE INDEX idx_booking_user ON bookings(user_id);
CREATE INDEX idx_booking_property ON bookings(property_id);
CREATE INDEX idx_booking_date ON bookings(booking_date);

-- Indexes on Property table
CREATE INDEX idx_property_host ON properties(host_id);
CREATE INDEX idx_property_city ON properties(city);
