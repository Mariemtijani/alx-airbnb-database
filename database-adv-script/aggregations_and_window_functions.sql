SELECT u.first_name , count(*)
FROM user AS u 
INNER JOIN booking AS b
ON u.user_id = b.host_id
GROUP BY b.host_id 


SELECT
  pb.property_id,
  pb.total_bookings,
  RANK() OVER (
    ORDER BY pb.total_bookings DESC
  ) AS rank_by_bookings,
  
  ROW_NUMBER() OVER (
    ORDER BY pb.total_bookings DESC
  ) AS row_number_by_bookings

FROM (
  SELECT
    property_id,
    COUNT(*) AS total_bookings
  FROM bookings
  GROUP BY property_id
) AS pb;

