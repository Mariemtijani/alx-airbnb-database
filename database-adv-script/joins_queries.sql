-- 1
SELECT user.first_name , user.last_name,booking.booking_id, booking.total_price
FROM booking
INNER JOIN user
ON user.user_id = booking.user_id

-- 2
SELECT property.name , review.rating
FROM property
LEFT JOIN review
ON property.property_id = review.property_id

-- 3
SELECT user.first_name , booking.booking_id
FROM user 
FULL OUTER JOIN booking
ON user.user_id = booking = user_id