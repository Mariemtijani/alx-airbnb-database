SELECT u.first_name , count(*)
FROM user AS u 
INNER JOIN booking AS b
ON u.user_id = b.host_id
GROUP BY b.host_id 


SELECT
  property_id,
  COUNT(*) AS total_bookings,
  RANK() OVER (
    ORDER BY COUNT(*) DESC
  ) AS property_rank
FROM bookings
GROUP BY property_id;
