-- 1
select property.name , property.location 
from property 
where property.property_id in (
    select review.property_id 
    from review 
    group by review.property_id
    having avg(review.rating) > 4.0
)

-- 2
select user.first_name , user.last_name
from user 
where  (
    select count(*) 
    from booking 
    where user.user_id = booking.host_id
     ) > 3
