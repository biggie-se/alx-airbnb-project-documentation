---Use SQL commands like SHOW PROFILE or EXPLAIN ANALYZE to monitor the performance of a few of your frequently used queries.

# First, enable profiling for the session
SET profiling = 1;

# Run your query
SELECT * FROM bookings WHERE property_id = 25;

# View profiling results
SHOW PROFILES;

# Get detailed breakdown of the last query
SHOW PROFILE FOR QUERY 1;

# You can check specific aspects like CPU or memory usage if needed
SHOW PROFILE CPU FOR QUERY 1;
