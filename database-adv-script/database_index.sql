-- User Table
CREATE INDEX idx_user_id ON user(user_id);

-- Booking Table
CREATE INDEX idx_booking_host_id ON booking(host_id);
CREATE INDEX idx_booking_user_id ON booking(user_id);
CREATE INDEX idx_booking_property_id ON booking(property_id);

-- Property Table
CREATE INDEX idx_property_id ON property(property_id);
CREATE INDEX idx_property_location ON property(location);


EXPLAIN ANALYZE
SELECT ...
FROM ...
WHERE ...
