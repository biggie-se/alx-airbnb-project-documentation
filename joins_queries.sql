SELECT Booking.booking_id, User.user_id, User.first_name, User.last_name
FROM Booking
INNER JOIN User
ON Booking.user_id = User.user_id;

SELECT Property.property_id, Property.name, Review.review_id, Review.comment
FROM Property
LEFT JOIN Review
ON Property.property_id = Review.review_id;

SELECT User.user_id, User.first_name, User.last_name, Booking.booking_id
FROM User
FULL OUTER JOIN Booking
ON User.user_id = Booking.user_id;