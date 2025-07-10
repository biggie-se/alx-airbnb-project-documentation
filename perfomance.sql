/*
Write an initial query that retrieves all bookings along with 
the user details, property details, and payment details and save it on perfomance.sql
*/

SELECT 
    b.booking_id, b.start_date, b.end_date, b.total_price, b.status, 
    u.first_name, u.last_name, p.name, p.location, pa.payment_date
FROM Booking b
INNER JOIN User u
ON b.user_id = u.user_id
INNER JOIN Property p
ON b.property_id = p.property_id
INNER JOIN Payment pa
ON b.booking_id = pa.booking_id

/*
Refactor the query to reduce execution time, 
such as reducing unnecessary joins or using indexing.
*/
