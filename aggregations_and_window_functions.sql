/* Write a query to find the total number of bookings made by each user, 
using the COUNT function and GROUP BY clause. */

SELECT u.user_id, u.first_name, u.last_name, (
    SELECT COUNT(b.booking_id)
    FROM Booking b
    WHERE b.user_id = u.user_id AND b.status = 'confirmed'
) AS confirmed_bookings
FROM User u
GROUP BY confirmed_bookings;

/* Use a window function (ROW_NUMBER, RANK) to rank properties 
based on the total number of bookings they have received.*/

SELECT 
    p.property_id, 
    p.name, 
    p.location, 
    COUNT(b.booking_id) AS property_bookings,
    RANK() OVER(
        ORDER BY COUNT(b.booking_id) DESC
    ) AS overall_rank,
    RANK() OVER(
        PARTITION BY p.location 
        ORDER BY COUNT(b.booking_id) DESC
        ) AS location_rank
FROM Property p
JOIN Booking b ON b.property_id = p.property_id
GROUP BY p.property_id, p.name, p.location;