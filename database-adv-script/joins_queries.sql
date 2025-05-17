
-- 1️ INNER JOIN: Retrieve all bookings and the respective users who made those bookings

SELECT 
    users.user_id,
    users.name AS user_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date
FROM 
    users
INNER JOIN 
    bookings ON users.user_id = bookings.user_id;


-- 2️ LEFT JOIN: Retrieve all properties and their reviews, including properties that have no reviews

SELECT 
    properties.property_id,
    properties.property_name,
    reviews.review_id,
    reviews.review_text,
    reviews.rating
FROM 
    properties
LEFT JOIN 
    reviews ON properties.property_id = reviews.property_id;


-- 3️ FULL OUTER JOIN: Retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user

SELECT 
    users.user_id,
    users.name AS user_name,
    bookings.booking_id,
    bookings.property_id,
    bookings.booking_date
FROM 
    users
FULL OUTER JOIN 
    bookings ON users.user_id = bookings.user_id;
