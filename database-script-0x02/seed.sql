
-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('u1', 'Thabo', 'Mokoena', 'thabo@example.com', 'hashed_pwd1', '0821234567', 'guest'),
('u2', 'Lerato', 'Ngcobo', 'lerato@example.com', 'hashed_pwd2', '0839876543', 'host'),
('u3', 'Sipho', 'Dlamini', 'sipho@example.com', 'hashed_pwd3', '0843456789', 'guest');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
('p1', 'u2', 'Cape Town Sea View', 'Modern apartment with ocean view near Camps Bay.', 'Cape Town', 1800.00),
('p2', 'u2', 'Johannesburg Urban Loft', 'Stylish loft in Maboneng Precinct.', 'Johannesburg', 950.00);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('b1', 'p1', 'u1', '2025-12-15', '2025-12-20', 9000.00, 'confirmed'),
('b2', 'p2', 'u3', '2025-11-10', '2025-11-12', 1900.00, 'pending');
