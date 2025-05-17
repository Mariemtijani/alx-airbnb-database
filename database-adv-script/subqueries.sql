-- 1
SELECT property.name , property.location 
FROM property 
WHERE property.property_id IN (
    SELECT review.property_id 
    FROM review 
    GROUP BY review.property_id
    HAVING AVG(review.rating) > 4.0
)

-- 2
SELECT user.first_name , user.last_name
FROM user 
WHERE  (
    SELECT COUNT(*) 
    FROM booking 
    WHERE user.user_id = booking.host_id
     ) > 3
