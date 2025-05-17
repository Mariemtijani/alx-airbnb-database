-- 1
select user.first_name , user.last_name,booking.booking_id, booking.total_price
from booking
inner join user
on user.user_id = booking.user_id

-- 2
select property.name , review.rating
from property
left join review
on property.property_id = review.property_id

-- 3
select user.first_name , booking.booking_id
from user 
full outer join booking
on user.user_id = booking = user_id