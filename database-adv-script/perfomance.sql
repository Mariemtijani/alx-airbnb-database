-- performance.sql
SELECT
    b.id AS booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    p.location,
    pay.amount,
    pay.payment_date
FROM booking b
JOIN user u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
JOIN payment pay ON b.booking_id = pay.booking_id;

