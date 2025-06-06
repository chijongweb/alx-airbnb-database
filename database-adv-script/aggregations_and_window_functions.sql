-- 1️ Aggregation: Find the total number of bookings made by each user

SELECT 
    users.user_id,
    users.name AS user_name,
    COUNT(bookings.booking_id) AS total_bookings
FROM 
    users
LEFT JOIN 
    bookings ON users.user_id = bookings.user_id
GROUP BY 
    users.user_id, users.name
ORDER BY 
    total_bookings DESC;


-- 2️ Window Function: Rank properties based on the total number of bookings they have received

SELECT 
    properties.property_id,
    properties.property_name,
    COUNT(bookings.booking_id) AS total_bookings,
    RANK() OVER (
        ORDER BY COUNT(bookings.booking_id) DESC
    ) AS rank,
    ROW_NUMBER() OVER (
        ORDER BY COUNT(bookings.booking_id) DESC
    ) AS row_num
FROM 
    properties
LEFT JOIN 
    bookings ON properties.property_id = bookings.property_id
GROUP BY 
    properties.property_id, properties.property_name
ORDER BY 
    rank;
