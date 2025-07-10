# Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses).
# Write SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql
# Measure the query performance before and after adding indexes using EXPLAIN or ANALYZE.

Property.rating, Property.name, Property.location, Booking.status, User.first_name, User.last_name

CREATE INDEX idx_name_location_rating
ON Property(name, location, rating);

CREATE INDEX idx_status
ON Booking(status);

CREATE INDEX idx_firstlast_name
ON User(first_name, last_name);